import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conoce a Tamalameque',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 211, 176)),
        useMaterial3: true,
      ),
      home: const TamalamequeHomePage(),
    );
  }
}

// Modelo de datos para las secciones informativas con campo de imagen opcional
class SeccionInfo {
  final String titulo;
  final IconData icono;
  final String contenido;
  final String? imagenUrl;

  const SeccionInfo({
    required this.titulo,
    required this.icono,
    required this.contenido,
    this.imagenUrl,
  });
}

// Datos con el mapa asignado a Ubicación y Geografía
const List<SeccionInfo> _seccionesDetalle = [
  SeccionInfo(
    titulo: 'Ubicación y Geografía',
    icono: Icons.location_on,
    contenido:
        'Tamalameque se sitúa en el extremo sur del departamento del Cesar, en el plano continental del Caribe colombiano,'
        ' formando parte integral de la subregión geográfica conocida como la Depresión Momposina y el Valle del Bajo Magdalena.'
        ' Su territorio es de relieve predominantemente llano y cuenta con un ecosistema anfibio moldeado por el curso del río Magdalena y'
        ' la extensa red de caños y ciénagas que alimentan el complejo cenagoso de Zapatosa. Limita geográficamente al norte con el municipio'
        ' de Chimichagua, al este con Curumaní, Pelaya y Pailitas, al sur con Pelaya y el departamento de Santander,'
        ' y al oeste con el río Magdalena, el cual sirve de frontera natural con los departamentos de Bolívar y Magdalena.'
        ' Por su ubicación estratégica, registra un clima tropical cálido y húmedo, con temperaturas promedio que rondan los'
        ' 30 °C a lo largo del año.',
      imagenUrl:
      'https://thumb.wikimedia.org/wikipedia/commons/thumb/7/79/Colombia_-_Cesar_-_Tamalameque.svg/250px-Colombia_-_Cesar_-_Tamalameque.svg.png?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
),

  SeccionInfo(
    titulo: 'Río Magdalena',
    icono: Icons.water,
    contenido:
        'El río Magdalena es la arteria fluvial más importante de Colombia,'
        ' un majestuoso curso de agua que nace en la Laguna del Buey, dentro del Macizo Colombiano a más de 3.600 metros de altura,'
        ' y recorre más de 1.500 kilómetros de sur a norte hasta desembocar en el mar Caribe a la altura de Bocas de Ceniza, '
        'en Barranquilla. Su inmensa cuenca hidrográfica abarca más de 250.000 kilómetros cuadrados, albergando a cerca del 80 % de la población colombiana y'
        ' concentrando la mayor parte de la actividad económica, agrícola e industrial del país. Desde tiempos precolombinos '
        'sirvió como la principal ruta de intercambio entre las comunidades indígenas,'
        ' y con la llegada de la conquista española y la época colonial se convirtió en la vía imprescindible para '
        'conectar el interior andino con el mundo exterior. Durante el siglo XIX y gran parte del XX, la navegación a vapor '
        'transformó sus riberas en prósperos centros de comercio, transporte de pasajeros y despacho de productos como el café '
        'y el tabaco a través de emblemáticos puertos como Honda, Barrancabermeja, El Banco, Tamalameque y Magangué.',
      imagenUrl: 
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6w2ala51bq7OwpANipa5btbL6PB7HMwI48RV8ZT25hlizRxijbvX_6vb&s=10'
  ),
  SeccionInfo(
    titulo: 'Fiestas y Cultura',
    icono: Icons.celebration,
    contenido:
        'Las festividades tradicionales de Tamalameque reflejan la profunda herencia afrodescendiente, '
        'indígena y anfibia del Caribe colombiano, donde la fe, el folclor ribereño y los mitos populares se entrelazan a lo largo del año.'
        ' Su celebración más representativa son las Fiestas Patronales en honor a San Miguel Arcángel a finales de septiembre,'
        ' las cuales coinciden con la fecha de su fundación española y llenan las calles de procesiones religiosas,'
        ' alboradas musicales, desfiles de bandas y bailes populares. En el plano cultural,'
        ' el municipio cobra vida con el Festival Nacional de la Tambora y la Guacherna,'
        ' el evento folclórico más importante de la localidad, donde agrupaciones de bailes cantados de la Depresión Momposina compiten y rinden homenaje a los ritmos ancestrales de la región.'
        ' Paralelamente, la identidad local mantiene viva la recreación del mito de "La Llorona de Tamalameque", '
        'inmortalizada en la célebre cumbia del maestro José Barros, que se escenifica mediante comparsas y dramatizaciones a orillas de la ciénaga'
        ' y del río Magdalena. Toda esta riqueza festiva se complementa a comienzos de año con los tradicionales carnavales —marcados por lecturas del bando,'
        ' comparsas y coronación de reinas— y con las parrandas decembrinas, donde las comunidades de la cabecera y'
        ' sus corregimientos celebran al ritmo de tamboras y música vallenata.',
      imagenUrl: 
      'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/rnal_16_9_1024/public/node/article/field_image/TamalamequeAlcald%C3%ADa1.jpg.webp?itok=XcgVZgZJ'
  ),

  SeccionInfo(
    titulo: 'Su gente ',
    icono: Icons.people, 
    contenido:
     'La gente de Tamalameque encarna la esencia cálida y alegre del habitante ribereño y "anfibio" del Caribe colombiano,'
     ' destacándose por su amabilidad, hospitalidad y trato cercano hacia propios y visitantes.'
     ' Su identidad está profundamente ligada al río Magdalena y a las ciénagas, lo que ha forjado en ellos una sólida '
     'tradición oral llena de historias, mitos y anécdotas compartidas con orgullo, entre las que sobresale la leyenda'
     ' de La Llorona. Además, poseen un espíritu marcadamente melómano y fiestero, sintiendo un amor visceral por la'
     ' tambora, los bailes cantados y el folclor tradicional que celebran comunitariamente en cada festividad.'
     ' Esta convivencia constante con las dinámicas del agua, la pesca y las labores del campo ha moldeado a una '
     'población resiliente, trabajadora y adaptativa, con un arraigo entrañable por su tierra y sus costumbres ancestrales.',
     
    imagenUrl:
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdiBZxAwUN4BmJ1JgrEz2mogZYsc27cXyGLHQAsMpGaMTPQ0SUGu4GwLQv&s=10'
  ),

];

class TamalamequeHomePage extends StatelessWidget {
  const TamalamequeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conoce a Tamalameque'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.map, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    'Menú Informativo',
                    style: TextStyle(
                      color: Color.fromARGB(255, 132, 214, 252),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Selecciona una sección',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ..._seccionesDetalle.map(
              (seccion) => ListTile(
                leading: Icon(
                  seccion.icono,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: Text(seccion.titulo),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaginaDetalle(seccion: seccion),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxw95ei4ivrhoQkSyVBIl19uQ473gto4Y5nUvVVgVlsMTm3jNnjL-4rtF8&s=10',
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.broken_image, size: 48),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Bienvenido a Tamalameque',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),


            const SizedBox(height: 24),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Historia de Tamalameque',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Tamalameque es uno de los asentamientos más antiguos de la región Caribe colombiana. '
                      'Fue fundado originalmente en la época colonial en tierras habitadas por los indígenas Pacabuyes.\n\n'
                      'Su nombre rinde homenaje al Cacique Tamalameque, líder indígena de la región. '
                      'A lo largo de los siglos, se convirtió en un punto clave para la navegación a vapor '
                      'por el Río Magdalena y un epicentro del desarrollo del folclor de la Tambora en Colombia.',
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),

                    const SizedBox(height: 12),
                    const Text('Era Precolombina y el Señorío de Tamalameque',
                      style: TextStyle(fontSize: 20, height: 3.4),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Antes de la llegada de los españoles, la región estaba habitada por la etnia Pacabuy'
                       '(de la familia lingüística Caribe/Arawak). Esta zona formaba parte del Señorío de Tamalameque,'
                       ' un importante cacicazgo que dominaba los complejos cenagosos de Zapatosa y las riberas del río Magdalena.'
                       ' El nombre de la población proviene del gran cacique Tamalameque,'
                       ' líder indígena que gobernaba este territorio a la llegada de los conquistadores.',
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),

                    const SizedBox(height: 12),
                    const Text(
                      'Fundación y Periodo Colonial',
                      style: TextStyle(fontSize: 20, height: 3.4),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'La población española fue fundada formalmente el 29 de septiembre de 1544 por el conquistador Lorenzo Martín, bajo el nombre de Villa de San Miguel de las Palmas de Tamalameque.'
                      'Punto estratégico de transporte: Durante la colonia, Tamalameque cobró vital importancia geográfica al ubicarse cerca de la confluencia del río Cesar con el río Magdalena. Funcionó como puerto fluvial y punto de paso obligado para viajeros, tropas y mercancías entre el interior del Virreinato de la Nueva Granada y el mar Caribe.'
                      'Desplazamientos del asentamiento: Debido a inundaciones recurrentes, ataques indígenas y fiebres tropicales, la Villa cambió de ubicación geográfica en al menos tres ocasiones antes de asentarse definitivamente en su lugar actual.',
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),

                    const SizedBox(height: 12),
                    const Text(
                      'Independencia y Época Republicana',
                      style: TextStyle(fontSize: 20, height: 3.4),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Durante las guerras de independencia a comienzos del siglo XIX,'
                      ' la posición de Tamalameque sobre el río Magdalena lo convirtió en un sitio disputado entre patriotas '
                      'y realistas para el control de la navegación y el abastecimiento.'
                      'Con la consolidación de la República y la llegada de la navegación a vapor por el Magdalena a mediados del siglo XIX, '
                      'Tamalameque mantuvo su rol como puerto fluvial activo, conectando el comercio del sur del Magdalena Grande con la costa.'
                      'En el siglo XX, la construcción de carreteras y la disminución del transporte fluvial redujeron su importancia como puerto,'
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PÁGINA SECUNDARIA QUE RENDERIZA LA IMAGEN SI EXISTE
class PaginaDetalle extends StatelessWidget {
  final SeccionInfo seccion;

  const PaginaDetalle({super.key, required this.seccion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(seccion.titulo),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  seccion.icono,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    seccion.titulo,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Si la sección incluye imagen (como el mapa de Ubicación), se muestra aquí:
            if (seccion.imagenUrl != null) ...[
              Center(
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 320),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      seccion.imagenUrl!,
                      fit: BoxFit.contain,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const SizedBox(
                          height: 200,
                          child: Center(child: CircularProgressIndicator()),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(
                          height: 200,
                          child: Center(
                            child: Icon(Icons.broken_image, size: 48),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
            Text(
              seccion.contenido,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}