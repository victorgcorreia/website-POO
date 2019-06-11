var FormStuff = {

    function yesnoCheck() {
      if (document.getElementById('radio2').checked) {
          document.getElementById('user_role_3').style.display = 'block';
      } else {
          document.getElementById('user_role_3').style.display = 'none';
      }
    }

};

FormStuff.yesnoCheck();
