import 'package:basic_crud_app/services/auth_service.dart';
import 'package:basic_crud_app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  var isLoading = false.obs;

  Future<void> signUp(
    String name,
    String email,
    String password,
  ) async {
    try {
      isLoading.value = true;

      final userCredential = await _authService.signUp(
        email,
        password,
      );

      final user = userCredential.user;

      if (user != null) {
        await _authService.saveUserData(
          user.uid,
          name,
          email,
        );
      }

      Get.snackbar(
        'Success',
        'Account created successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Sign Up Failed',
        e.message ?? 'Something went wrong',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Something went wrong',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> login(
    String email,
    String password,
  ) async {
    try {
      isLoading.value = true;

      await _authService.login(
        email,
        password,
      );

      Get.snackbar(
        'Success',
        'Login successful',
        snackPosition: SnackPosition.BOTTOM,
      );

      Get.offNamed(AppRoutes.home);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Login Failed',
        e.message ?? 'Something went wrong',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Something went wrong',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
  try {
    isLoading.value = true;

    await _authService.logout();

    Get.snackbar(
      'Success',
      'Logged out successfully',
      snackPosition: SnackPosition.BOTTOM,
    );

    Get.offNamed(AppRoutes.login);
  } catch (e) {
    Get.snackbar(
      'Logout Failed',
      'Something went wrong',
      snackPosition: SnackPosition.BOTTOM,
    );
  } finally {
    isLoading.value = false;
  }
}
}