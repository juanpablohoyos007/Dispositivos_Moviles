void main() {
  //(Basado en datos de 2026)
  // Android 15: 19.3% (Equivale a 752 millones de usuarios)
  // iOS 18: 78% (Adopción consolidada en el ecosistema Apple)
  List<Map<String, dynamic>> adopcionOS = [
    {'sistema': 'iOS 18', 'porcentaje': 78},
    {'sistema': 'Android 15', 'porcentaje': 19},
  ];

  // 2. Definición de 'Umbral Crítico' (Requerimiento del cliente)
  double umbralCritico = 50.0;

  print('==============================================');
  print('   ANÁLISIS DE FRAGMENTACIÓN Y ADOPCIÓN 2026  ');
  print('==============================================');
  print('Umbral requerido para IA avanzada: $umbralCritico%\n');

  // 3. Función que usa un ciclo para filtrar versiones
  analizarFragmentacion(adopcionOS, umbralCritico);
}

void analizarFragmentacion(List<Map<String, dynamic>> datos, double umbral) {
  for (var plataforma in datos) {
    String nombre = plataforma['sistema'];
    int nivelAdopcion = plataforma['porcentaje'];

    print('Verificando $nombre...');
    print('Adopción actual en 2026: $nivelAdopcion%');

    if (nivelAdopcion < umbral) {
      // 4. Mapa de 'Estrategia de Retrocompatibilidad'
      Map<String, String> estrategia = {
        'alerta': 'BAJA ADOPCIÓN DETECTADA',
        'accion': 'Implementar Cloud AI \n y difundir la disponibilidad de manera oficial en los dispositivos ',
        'objetivo': 'No excluir a los 3,100 millones de usuarios restantes',
        'prioridad': 'Alta'
      };

      print('=( RESULTADO: Por debajo del umbral crítico.');
      print('--- PLAN DE ACCIÓN CUANDO NO SE CUMPLE UMBRAL ---');
      print('Sugerencia: ${estrategia['accion']}');
      print('Prioridad: ${estrategia['prioridad']}\n');
    } else {
      print('RESULTADO: Adopción óptima.');
      print('Sugerencia: Lanzar funciones exclusivas de IA local,\n Apple necesita fortalecer sus IAS.\n');
    }
  }
}