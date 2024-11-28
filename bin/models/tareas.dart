
class Tareas { // Clase para gestionar la lista de tareas

  final List<String> listaTareas =
      []; // Lista para almacenar las tareas en orden

  // Metodo para agregar una tarea

  void agregarTarea(String tarea) {
    listaTareas.add(tarea); // Añade la tarea al final de la lista
    print("Tarea '$tarea' añadida.");
  }

  // Metodo para eliminar una tarea por su índice

  void eliminarTarea(int indice) {
    if (indice < 0 || indice >= listaTareas.length) {
      print(
          "Error: El índice no es válido."); // Valida que el índice esté dentro del rango
    } else {
      print("Tarea '${listaTareas[indice]}' eliminada.");
      listaTareas.removeAt(indice); // Elimina la tarea correspondiente
    }
  }

  // Metodo para mostrar todas las tareas

  void mostrarTareas() {
    if (listaTareas.isEmpty) {
      print("No tienes tareas pendientes."); // Mensaje si no hay tareas
    } else {
      print("Tus tareas son:");
      for (int i = 0; i < listaTareas.length; i++) {
        print("${i + 1}. ${listaTareas[i]}"); // Muestra las tareas con índice
      }
    }
  }
}
