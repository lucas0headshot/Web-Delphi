object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  HTMLHeaders.Strings = (
    
      '<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/' +
      'bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0i' +
      'XCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" cross' +
      'origin="anonymous">'
    
      '<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" i' +
      'ntegrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfR' +
      'vH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>'
    
      '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.' +
      '14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KV' +
      'phtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymo' +
      'us"></script>'
    
      '<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/' +
      'js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoI' +
      'Iy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"' +
      '></script>')
  Port = 8888
  Version = '15.2.65'
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
