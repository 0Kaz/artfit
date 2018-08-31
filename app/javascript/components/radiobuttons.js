let initRadioButtons = () => {

  $("#categories label").click( (label) => {

      $(document.querySelectorAll("#categories label")).removeClass("btn-success");

      $(label.target).addClass('btn-success');

      const categoryId = "#design_theme_" + $(label.target).attr('for').split('_')[1];
      $(categoryId).click();
    });
  }

window.initRadioButtons = initRadioButtons;

export { initRadioButtons };


