abstract class Failures {
  final String message;
  const Failures({required this.message});
}

class ServerFailures extends Failures {
  ServerFailures({required super.message});
}
