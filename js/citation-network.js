// Citation Network Force-Directed Graph using D3.js
window.citationNetwork = {
    simulation: null,
    svg: null,
    width: 0,
    height: 0,
    nodes: [],
    links: [],
    nodeElements: null,
    linkElements: null,
    labelElements: null,
    dotNetHelper: null,

    /**
     * Initialize the force-directed network
     * @param {string} svgId - The ID of the SVG element
     * @param {Array} nodes - Array of node objects {id, label, title, type, category}
     * @param {Array} edges - Array of edge objects {source, target}
     * @param {number} width - SVG width
     * @param {number} height - SVG height
     */
    init: function (svgId, nodes, edges, width, height) {
        this.width = width;
        this.height = height;
        this.nodes = nodes.map(n => ({ ...n, x: width / 2, y: height / 2 }));
        this.links = edges.map(e => ({ source: e.source, target: e.target }));

        // Get SVG element
        this.svg = d3.select(`#${svgId}`);
        this.svg.selectAll("*").remove(); // Clear previous content

        // Create arrow marker for directed edges
        this.svg.append("defs").selectAll("marker")
            .data(["arrow"])
            .enter().append("marker")
            .attr("id", "arrow")
            .attr("viewBox", "0 -5 10 10")
            .attr("refX", 25)
            .attr("refY", 0)
            .attr("markerWidth", 6)
            .attr("markerHeight", 6)
            .attr("orient", "auto")
            .append("path")
            .attr("d", "M0,-5L10,0L0,5")
            .attr("fill", "#999");

        // Create force simulation
        this.simulation = d3.forceSimulation(this.nodes)
            .force("link", d3.forceLink(this.links)
                .id(d => d.id)
                .distance(150))
            .force("charge", d3.forceManyBody()
                .strength(-300))
            .force("center", d3.forceCenter(width / 2, height / 2))
            .force("collision", d3.forceCollide()
                .radius(d => d.radius + 10));

        // Create links
        this.linkElements = this.svg.append("g")
            .attr("class", "links")
            .selectAll("line")
            .data(this.links)
            .enter().append("line")
            .attr("stroke", "#999")
            .attr("stroke-opacity", 0.6)
            .attr("stroke-width", 2)
            .attr("marker-end", "url(#arrow)");

        // Create nodes
        const nodeGroup = this.svg.append("g")
            .attr("class", "nodes");

        const self = this;
        this.nodeElements = nodeGroup.selectAll("circle")
            .data(this.nodes)
            .enter().append("circle")
            .attr("r", d => d.radius || 20)
            .attr("fill", d => this.getNodeColor(d.type))
            .attr("stroke", "#fff")
            .attr("stroke-width", 2)
            .style("cursor", "pointer")
            .on("click", function (event, d) {
                if (self.dotNetHelper) {
                    self.dotNetHelper.invokeMethodAsync('OnNodeClicked', d.id);
                }
            })
            .call(this.drag());

        // Create labels
        this.labelElements = this.svg.append("g")
            .attr("class", "labels")
            .selectAll("text")
            .data(this.nodes)
            .enter().append("text")
            .text(d => d.label)
            .attr("font-size", 12)
            .attr("font-family", "Arial, sans-serif")
            .attr("fill", "#333")
            .attr("text-anchor", "middle")
            .attr("dy", ".35em")
            .style("pointer-events", "none");

        // Update positions on each tick
        this.simulation.on("tick", () => {
            this.linkElements
                .attr("x1", d => d.source.x)
                .attr("y1", d => d.source.y)
                .attr("x2", d => d.target.x)
                .attr("y2", d => d.target.y);

            this.nodeElements
                .attr("cx", d => d.x)
                .attr("cy", d => d.y);

            this.labelElements
                .attr("x", d => d.x)
                .attr("y", d => d.y);
        });

        return this.nodes;
    },

    /**
     * Get node color based on document type
     */
    getNodeColor: function (type) {
        const colors = {
            'LegalCase': '#3b82f6',      // Blue
            'Statute': '#10b981',         // Green
            'Commentary': '#f59e0b',      // Orange
            'Regulation': '#8b5cf6',      // Purple
            'Article': '#ec4899'          // Pink
        };
        return colors[type] || '#6b7280'; // Gray default
    },

    /**
     * Drag behavior for nodes
     */
    drag: function () {
        const self = this;
        return d3.drag()
            .on("start", function (event, d) {
                if (!event.active) self.simulation.alphaTarget(0.3).restart();
                d.fx = d.x;
                d.fy = d.y;
            })
            .on("drag", function (event, d) {
                d.fx = event.x;
                d.fy = event.y;
            })
            .on("end", function (event, d) {
                if (!event.active) self.simulation.alphaTarget(0);
                d.fx = null;
                d.fy = null;
            });
    },

    /**
     * Highlight node and its connections
     */
    highlightNode: function (nodeId) {
        // Reset all nodes and links
        this.nodeElements
            .attr("opacity", 0.3)
            .attr("stroke-width", 2);

        this.linkElements
            .attr("opacity", 0.1);

        this.labelElements
            .attr("opacity", 0.3);

        if (nodeId === null) {
            // Reset to normal if no node selected
            this.nodeElements.attr("opacity", 1);
            this.linkElements.attr("opacity", 0.6);
            this.labelElements.attr("opacity", 1);
            return;
        }

        // Highlight selected node
        this.nodeElements
            .filter(d => d.id === nodeId)
            .attr("opacity", 1)
            .attr("stroke-width", 4);

        // Highlight connected nodes
        const connectedNodeIds = new Set();
        connectedNodeIds.add(nodeId);

        this.links.forEach(link => {
            if (link.source.id === nodeId) {
                connectedNodeIds.add(link.target.id);
            } else if (link.target.id === nodeId) {
                connectedNodeIds.add(link.source.id);
            }
        });

        this.nodeElements
            .filter(d => connectedNodeIds.has(d.id))
            .attr("opacity", 1);

        // Highlight connected links
        this.linkElements
            .filter(d => d.source.id === nodeId || d.target.id === nodeId)
            .attr("opacity", 1);

        // Highlight labels
        this.labelElements
            .filter(d => connectedNodeIds.has(d.id))
            .attr("opacity", 1);
    },

    /**
     * Set .NET object reference for callbacks
     */
    setDotNetHelper: function (dotNetHelper) {
        this.dotNetHelper = dotNetHelper;
    },

    /**
     * Restart simulation
     */
    restart: function () {
        if (this.simulation) {
            this.simulation.alpha(1).restart();
        }
    },

    /**
     * Stop simulation
     */
    stop: function () {
        if (this.simulation) {
            this.simulation.stop();
        }
    },

    /**
     * Clean up
     */
    destroy: function () {
        if (this.simulation) {
            this.simulation.stop();
        }
        if (this.svg) {
            this.svg.selectAll("*").remove();
        }
        this.dotNetHelper = null;
    }
};
