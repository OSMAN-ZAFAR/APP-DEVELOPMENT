enum TraficeLight {
  red,
  green,
  yellow
}

void main()
{
  TraficeLight signal=TraficeLight.red;
  switch (signal) {
    case TraficeLight.red:
      print('Stop');
      break;
    case TraficeLight.green:
      print('Go');
      break;
    case TraficeLight.yellow:
      print('Wait');
      break;
  }
}