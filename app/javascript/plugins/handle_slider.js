
// Update the current slider value (each time you drag the slider handle)
const displaySliderValue = (event) => {
  const sliderFeedback = document.getElementById('sliderFeedback')
  const sliderValue = event.target.value
  // sliderFeedback.innerText = event.target.value

  switch (sliderValue) {
    case '0':
      sliderFeedback.innerText = 'Not better'
      break;
    case '1':
      sliderFeedback.innerText = 'Neutral'
      break;
    case '2':
      sliderFeedback.innerText = 'Not bad'
      break;
    case '3':
      sliderFeedback.innerText = 'Nice'
      break;
    case '4':
      sliderFeedback.innerText = 'Good'
      break;
    case '5':
      sliderFeedback.innerText = 'Awesome!'
      break;
  }

}

const handleSlider = () => {
  const sliderInput = document.querySelector('.slider');
  if (sliderInput) {
    sliderInput.addEventListener('change', displaySliderValue)
  }
}

export { handleSlider };




