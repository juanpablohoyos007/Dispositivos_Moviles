// Ejercicio 3: Personalización vs Estabilidad


// Función que recibe el perfil del usuario y devuelve la recomendación
String recomendarPlataforma(Map<String, bool> perfilUsuario) {
  // Lista de atributos de cada plataforma
  Map<String, Map<String, bool>> plataformas = {
    "Android": {
      "Customizacion": true,
      "Estabilidad": false,
      "Sideloading": true,
      "Root": true,
    },
    "iOS": {
      "Customizacion": false,
      "Estabilidad": true,
      "Sideloading": false,
      "Root": false,
    }
  };

  String mejorPlataforma = "";
  int mejorPuntaje = -1;

  // Recorremos cada plataforma para comparar con el perfil del usuario
  plataformas.forEach((nombre, atributos) {
    int puntaje = 0;

    // Comparación atributo por atributo usando condicionales
    perfilUsuario.forEach((clave, valor) {
      if (atributos.containsKey(clave) && atributos[clave] == valor) {
        puntaje++; // Si coincide, suma puntos
      }
    });

    // Guardamos la plataforma con mayor coincidencia
    if (puntaje > mejorPuntaje) {
      mejorPuntaje = puntaje;
      mejorPlataforma = nombre;
    }
  });

  return mejorPlataforma;
}

void main() {
  // 1. Mapa de perfiles de usuario con preferencias
  Map<String, Map<String, bool>> perfiles = {
    "Hardcore": {
      "Customizacion": true,
      "Estabilidad": false,
      "Sideloading": true,
      "Root": true,
    },
    "Ejecutivo": {
      "Customizacion": false,
      "Estabilidad": true,
      "Sideloading": false,
      "Root": false,
    }
  };

  // 4. Imprimir recomendación detallada para cada perfil
  perfiles.forEach((nombrePerfil, preferencias) {
    String recomendacion = recomendarPlataforma(preferencias);

    print("=====================================");
    print("Perfil de usuario: $nombrePerfil");
    print("Preferencias: $preferencias");
    print("Plataforma recomendada: $recomendacion");

    // Explicación sencilla del resultado
    if (recomendacion == "Android") {
      print(
          "Motivo: Android destaca por su libertad de personalización, root y sideloading.");
    } else {
      print(
          "Motivo: iOS destaca por su estabilidad, optimización y menor probabilidad de fallos.");
    }
  });
}
