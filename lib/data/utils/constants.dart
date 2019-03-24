class Constants {

    // APIs
    static const String baseUrl = 'http://$baseUrlNoPrefix';
    static const String usersRoute = '$baseUrl/users';
    static const String loginRoute = '$baseUrl/login';
    static const String eventsRoute = '$baseUrl/events';
    static const String eventRegistrationsRoute = '$baseUrl/eventRegistrations';
    static const String allHHHRoute = '$baseUrl/HHHs';
    static const String currentHHHRoute = '$baseUrl/currentHHH';

    // APIs no prefix
    static const String baseUrlNoPrefix = '45.32.197.143:8000';
    static const String eventsPathOnly = '/events';
    static const String sponsorsPathOnly = '/sponsors';
    static const String eventRegistrationsPathOnly = '/eventRegistrations';


    // Local Storage
    static const String tokenKey = 'authentication_token';
    static const String userKey = 'user_key';
    static const String isAuthenticatedKey = 'isUserAuthenticated';
}