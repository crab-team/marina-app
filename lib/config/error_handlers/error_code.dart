// ignore_for_file: constant_identifier_names

enum ErrorCode {
  ACCOUNT_ALREADY_EXISTS('La cuenta ya existe.'),
  ACCOUNT_NOT_FOUND('La cuenta no existe.'),
  INVALID_EMAIL('El email es inválido.'),
  INVALID_PASSWORD('La contraseña es inválida.'),

  SAVING_IMAGE_ERROR('Error al guardar la imagen.'),
  LOADING_IMAGES_ERROR('Error al cargar las imágenes.'),
  LOADING_IMAGE_ERROR('Error al cargar la imagen.'),
  DELETING_IMAGE_ERROR('Error al eliminar la imagen.'),
  UPDATING_IMAGE_PARAMS_ERROR('Error al actualizar los parámetros de la imagen.'),

  // Generic error.
  UNEXPECTED_ERROR('Ups, algo salió mal.'),
  FORMAT_EXCEPTION('Error de formato.'),
  CACHE_ERROR('Error de caché.'),
  UNAUTHORIZED('No autorizado.');

  final String description;
  const ErrorCode(this.description);
}
