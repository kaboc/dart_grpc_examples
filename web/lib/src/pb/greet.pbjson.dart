///
//  Generated code. Do not modify.
//  source: greet.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Name$json = const {
  '1': 'Name',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

const Greeting$json = const {
  '1': 'Greeting',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'names', '3': 2, '4': 3, '5': 11, '6': '.greet.Greeting.NamesEntry', '10': 'names'},
    const {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
  ],
  '3': const [Greeting_NamesEntry$json],
};

const Greeting_NamesEntry$json = const {
  '1': 'NamesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 11, '6': '.greet.Name', '10': 'name'},
  ],
};

const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'greeting', '3': 1, '4': 1, '5': 11, '6': '.greet.Greeting', '10': 'greeting'},
  ],
};

