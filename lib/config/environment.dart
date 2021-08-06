enum Environments { DEVELOPER, TEST, PRODUCTION }

class EnvironmentConfig {
  static Environments environmentBuild;

  static String urlsConfig() {
    switch (environmentBuild) {
      case Environments.DEVELOPER:
        return "https://images.pexels.com/photos/397857/pexels-photo-397857.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
      case Environments.TEST:
        return "https://images.pexels.com/photos/2900315/pexels-photo-2900315.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
      case Environments.PRODUCTION:
        return "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
      default:
        return "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
    }
  }
}
