import 'package:hnh/app/abstract/controller.dart';
import 'package:hnh/app/home/home_presenter.dart';
import 'package:hnh/domain/entities/user.dart';
import 'package:logging/logging.dart';
import 'package:hnh/domain/entities/hhh.dart';

class HomeController extends Controller {

  HomePresenter _homePresenter;
  User _currentUser;
  HHH _currentHHH;

  DateTime get eventTime => _currentHHH?.eventTime;
  User get currentUser => _currentUser;
  Logger logger;

  HomeController(hhhRepository, sponsorRepository) {
    _homePresenter = HomePresenter(hhhRepository, sponsorRepository);
    initListeners();
    isLoading = true;
    retrieveData();
  }

  void initListeners() {
    _homePresenter.getHHHOnNext = (HHH hhh) {
      _currentHHH = hhh;
    };

    _homePresenter.getHHHOnError = (e) {
      // TODO: show the user the error
      print(e);
    };

    _homePresenter.getHHHOnComplete = () {
      dismissLoading();
    };
  }

  void retrieveData() {
    _homePresenter.getCurrentHHH();
  }
}
