class Time {
  var hours;
  var minutes;
  var seconds;

  Time() {
    hours = 0;
    minutes = 0;
    seconds = 0;
  }
  Time.inti(int h, int m, int s) {
    if (h >= 0 && h < 24) {
      hours = h;
    } else {
      hours = 0;
    }

    if (m >= 0 && m < 60) {
      minutes = m;
    } else {
      minutes = 0;
    }

    if (s >= 0 && s < 60) {
      seconds = s;
    } else {
      seconds = 0;
    }
  }

  void displayTime() {
    print('${hours}:${minutes}:${seconds}');
  }

  Time operator +(Time other) {
    // Overloaded operator+ for addition
    Time third = Time();
    third.seconds = seconds + other.seconds;
    third.minutes = minutes + other.minutes;
    third.hours = hours + other.hours;

    if (third.seconds >= 60) {
      third.seconds -= 60;
      third.seconds += 1;
    }
    if (third.minutes >= 60) {
      third.minutes -= 60;
      third.hours += 1;
    }
    if (third.hours >= 24) {
      third.hours = third.hours % 24;
    }

    return third;
  }

  void increment() {
    // Pre-increment
    ++seconds;
    if (seconds >= 60) {
      seconds -= 60;
      ++minutes;
      if (minutes >= 60) {
        minutes -= 60;
        ++hours;
        hours %= 24;
      }
    }
  }

  void decrement() {
    // Pre-decrement
    --seconds;
    if (seconds < 0) {
      seconds += 60;
      --minutes;
      if (minutes < 0) {
        minutes += 60;
        --hours;
        if (hours < 0) hours += 24;
      }
    }
  }
}

void main(List<String> args) {
  Time time1 = Time.inti(10, 40, 30);

  Time time2 = Time.inti(10, 10, 20);

  Time time3 = Time();
  time3 = time1 + time2;
  time1.displayTime();
  time2.displayTime();
  time3.displayTime();

  time1.increment();
  time1.displayTime();

  time1.decrement();
  time1.displayTime();
}
