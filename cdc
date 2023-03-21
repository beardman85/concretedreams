document.getElementById('calculator').addEventListener('submit', (event) => {
    event.preventDefault();

    const length = parseFloat(document.getElementById('length').value);
    const width = parseFloat(document.getElementById('width').value);
    const depth = parseFloat(document.getElementById('depth').value);
    const concreteType = document.getElementById('concreteType').value;

    if (length && width && depth && concreteType) {
        const volume = (length * width * (depth / 12)).toFixed(2);
        const cost = calculateCost(volume, concreteType);
        const result = `The required volume of concrete is ${volume} cubic feet. The estimated cost is $${cost.toFixed(2)}.`;
        document.getElementById('result').innerText = result;
    } else {
        document.getElementById('result').innerText = 'Please enter valid values for length, width, depth, and concrete type.';
    }
});

function calculateCost(volume, concreteType) {
    const costPerCubicFoot = {
        standard: 100, // Cost per cubic foot for standard concrete
        colored: 120,  // Cost per cubic foot for colored concrete
        stamped: 150   // Cost per cubic foot for stamped concrete
    };

    return volume * costPerCubicFoot[concreteType];
}
