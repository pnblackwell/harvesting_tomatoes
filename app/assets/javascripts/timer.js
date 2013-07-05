
var Pomodoro = {
  timer: $("#timer"),

  startTimer: function() {
    var time = 1500000;
    setInterval(function() {
      time -= 1000; 
      minutes = Math.floor(time / 1000 / 60);
      seconds = time / 1000 % 60;
      this.setTimer(minutes,seconds);
    }, 1000);
  },

  setTimer: function(minutes,seconds) {
    this.timer.html(minutes.toString() + ":" + seconds.toString());
  }
}

$('document').ready(function() {
  $('#begin').on('click', function() {
    Pomodoro.startTimer();
    return false;
  });
});

var Break = {
  startTimer: function() {
    var time = 300000;
    setInterval(function() {
      time -= 1000; 
      minutes = Math.floor(time / 1000 / 60);
      seconds = time / 1000 % 60;
      $('#timer').html(minutes.toString() + ":" + seconds.toString());
    }, 1000);
  }
}

$('document').ready(function() {
  $('#break').on('click', function() {
    Break.startTimer();
    return false;
  });
});

var Stop = {
  stopTimer: function() {
    var time = 1500000
  }
}

