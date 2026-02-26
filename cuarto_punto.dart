// Ejercicio 4: Auditoría de Seguridad y Ecosistema


void main() {

  // 1. Lista de plataformas con sus características de seguridad
  List<Map<String, dynamic>> plataformas = [
    {
      'nombre': 'iOS',
      'esCerrado': true,
      'tiendasTerceros': false,
      'permiteSideloading': false
    },
    {
      'nombre': 'Android',
      'esCerrado': false,
      'tiendasTerceros': true,
      'permiteSideloading': true
    },
    {
      'nombre': 'HarmonyOS',
      'esCerrado': true,
      'tiendasTerceros': true,
      'permiteSideloading': false
    }
  ];

  // Llamamos la función para analizar seguridad
  List<Map<String, dynamic>> aprobados =
      analizarPlataformas(plataformas);

  print("=====================================");
  print("PLATAFORMAS APROBADAS PARA EMPRESA");
  print("=====================================");

  // 4. Mostrar lista final usando forEach
  aprobados.forEach((plataforma) {
    print("->${plataforma['nombre']} cumple requisitos de seguridad.");
  });
}


// 2. Función que analiza cada plataforma usando un ciclo
List<Map<String, dynamic>> analizarPlataformas(
    List<Map<String, dynamic>> plataformas) {

  List<Map<String, dynamic>> aprobadosEmpresa = [];

  for (var plataforma in plataformas) {

    bool esCerrado = plataforma['esCerrado'];
    bool permiteSideloading = plataforma['permiteSideloading'];

    // 3. Condicional complejo según requisitos de la empresa
    if (esCerrado == true && permiteSideloading == false) {
      aprobadosEmpresa.add(plataforma);
    }
  }

  return aprobadosEmpresa;
}
