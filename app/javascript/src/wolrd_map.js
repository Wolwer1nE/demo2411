import * as d3 from 'd3'

function randomPoints(n, min, max)
{
    const res =[];
    const randX = d3.randomInt(min.x, max.x);
    const randY = d3.randomInt(min.y, max.y);

    for(let i = 0; i < n; i++){
        res.push({x: randX(), y:randY()})
    }
    return res;
}

document.addEventListener('DOMContentLoaded', ()=>{
    const container = document.getElementById("map-container");
    if (!container) return;
    const width = 1200;
    const height = 600;
    const graph = d3.select(container)
        .append('svg')
        .attr("width", width)
        .attr("height", height);
    const lineGenerator = d3.line()
        .x((d)=>{return d.x})
        .y((d)=>{return d.y})
        .curve(d3.curveLinearClosed);
    const nSlice = 20;
    const xSlice = width/nSlice;
    const ySlice = height/nSlice;
    for (let i = 0; i < nSlice; i++)
        for (let j = 0; j < nSlice; j++)
        {
            if (Math.random() > 0.65){
                const min = {
                    x: i*xSlice,
                    y: j*ySlice
                };
                const max = {
                    x: (i+1)*xSlice+Math.random()*2*xSlice,
                    y: (j+1)*ySlice+Math.random()*2*ySlice
                };
                graph.append("path")
                    .attr('d', lineGenerator(randomPoints(3, min, max)))
                    .attr('stroke', 'blue')
                    .attr('fill', 'yellow')
                    .attr('stroke-width', 2);
            }

        }
});



