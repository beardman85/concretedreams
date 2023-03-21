document.getElementById('calculator').addEventListener('submit', (event) => {
    event.preventDefault();

    const length = parseFloat(document.getElementById('length').value);
    const width = parseFloat(document.getElementById('width').value);
    const depth = parseFloat(document.getElementById('depth').value);

    if (length && width && depth) {
        const volume = (length * width * (depth / 12)).toFixed(2);
        const result = `The required volume of concrete is ${volume} cubic feet.`;
        document.getElementById('result').innerText = result;
    } else {
        document.getElementById('result').innerText = 'Please enter valid values for length, width, and depth.';
    }
});
