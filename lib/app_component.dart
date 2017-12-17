import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/browser_client.dart';
import 'package:rest_client_example/src/json/sample_json.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES],
  providers: const [SampleRepository],
)
class AppComponent implements OnInit{

  SampleRepository repository;

  String data;

  AppComponent(this.repository);

  @override
  void ngOnInit() => load();

  Future<Null> load() async {
    data = (await repository.get()).ip;
  }
}


@Injectable()
class SampleRepository {
  BrowserClient _http;
  SampleRepository(this._http);

  Future<SampleJson> get() async {
    var response = await _http.get("http://ip.jsontest.com/");
    return new SampleJson.fromJson(JSON.decode(response.body) as Map<String, dynamic>);
  }
}


@Injectable()
class SampleService {
  BrowserClient _http;
  SampleService(this._http);

  Future<Null> execute() async {
    var response = await _http.get("http://ip.jsontest.com/");
    print(JSON.decode(response.body));
  }
}
