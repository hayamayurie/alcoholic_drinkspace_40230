document.addEventListener('turbo:load', function() {
  const postButton = document.getElementById('postButton');

  postButton.addEventListener('mouseover', function() {
    postButton.style.backgroundColor = 'cornsilk';
    postButton.style.color = 'dimgray'; 
  });

  postButton.addEventListener('mouseout', function() {
    postButton.style.backgroundColor = '';
    postButton.style.color = '';
  });
});



document.addEventListener('turbo:load', function() {
  const categoryButtons = document.querySelectorAll('.wapper');

  categoryButtons.forEach(function(categoryButton) {
    categoryButton.addEventListener('mouseover', function() {
      categoryButton.style.backgroundColor = 'lightyellow';
      categoryButton.style.color = 'dimgray';
    });

    categoryButton.addEventListener('mouseout', function() {
      categoryButton.style.backgroundColor = '';
      categoryButton.style.color = '';
    });
  });
});

document.addEventListener('turbo:load', function() {
  const postButton = document.getElementById('StartButton');

  postButton.addEventListener('mouseover', function() {
    postButton.style.backgroundColor = '#f6efdb';
    postButton.style.color = 'dimgray'; 
  });

  postButton.addEventListener('mouseout', function() {
    postButton.style.backgroundColor = '';
    postButton.style.color = '';
  });
});

document.addEventListener('turbo:load', function() {
  const postButton = document.getElementById('Button');

  postButton.addEventListener('mouseover', function() {
    postButton.style.backgroundColor = 'cornsilk'; 
  });

  postButton.addEventListener('mouseout', function() {
    postButton.style.backgroundColor = '';
  });
});


document.addEventListener('turbo:load', function() {
  const categoryButtons = document.querySelectorAll('.link-class');

  categoryButtons.forEach(function(categoryButton) {
    categoryButton.addEventListener('mouseover', function() {
      categoryButton.style.backgroundColor = 'lightgray';
    });

    categoryButton.addEventListener('mouseout', function() {
      categoryButton.style.backgroundColor = ''
    });
  });
});