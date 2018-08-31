const initGlobalWrapper = () => {
  $("#global-wrapper").css( "min-height", window.innerHeight - 80 - 60);
  $("#global-wrapper").css( "background","white");
}

export {initGlobalWrapper}
