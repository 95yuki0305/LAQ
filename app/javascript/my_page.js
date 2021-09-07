window.addEventListener('load', () => {
  const open = document.getElementsByClassName('main-item');
  const modal = document.getElementsByClassName('modal');
  const close = document.getElementsByClassName('close');
  const mask = document.getElementById('mask');

  for(let i = 0; i < open.length; i++) {
    open[i].addEventListener('click', () => {
      modal[i].classList.remove('hidden');
      mask.classList.remove('hidden');
  });}

  for(let i = 0; i < open.length; i++) {
    close[i].addEventListener('click', () => {
      modal[i].classList.add('hidden');
      mask.classList.add('hidden');
  });}

  mask.addEventListener('click', () => {
    close.click();
  });
});