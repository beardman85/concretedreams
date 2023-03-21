document.getElementById('calculator').addEventListener('submit', (event) => {
    event.preventDefault();
    const type = document.getElementById('type').value;
    const length = parseFloat(document.getElementById('length').value);
    const width = parseFloat(document.getElementById('width').value);
    const depth = parseFloat(document.getElementById('depth').value);
    if (type && length && width && depth) {
        const area = length * width;
        const volume = area * (depth / 12);
        const yards = volume / 27;
        let cost;

        switch (type) {
            case 'standard':
                cost = 5600;
                break;
            case 'colored':
                cost = 6463.33;
                break;
            case 'stamped':
                cost = 13463.33;
                break;
        }
        const result = `Total cost: $${cost.toFixed(2)}<br><br>Check your email for the estimate. Remember that having us come to the job and do a field measure and assessment will get you a 10% discount on the entire bill and possibly up to 25% on the entire project once we get a true measurement and understand the project better.`;
        document.getElementById('result').innerHTML = result;
    } else {
        document.getElementById('result').innerText = 'Please select a concrete type and enter valid values for length, width, and depth.';
    }
});
