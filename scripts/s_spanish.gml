// arg0: ind de dialogo
// ret: str del dialogo

switch argument0 {
    
    // para objeto txt
    case 0:
        return "Nombre o correo registrado";
    case 1:
        return "Contraseña para ingresar";
    case 2:
        return "Nueva contraseña (opcional)";
    case 3:
        return "Correo para crear cuenta";
    case 4:
        return "Su nombre de usuario";
    case 5:
        return "Nombre o correo a buscar";
    case 6:
        return "Texto libre";
    
    // para GUI
    case 100:
        return "Advertencia: procure No usar su contraseña de redes importantes (baja seguridad)";
    case 101:
        return "Spanish";
    case 102:
        return "Web +Soft";
    case 103:
        return "Error##Sin conexión a internet";
    case 104:
        return "Reg:";
    case 105:
        return "Mod:";
    case 106:
        return "Act:   ";
    case 107:
        return "Ene";
    case 108:
        return "Feb";
    case 109:
        return "Mar";
    case 110:
        return "Abr";
    case 111:
        return "May";
    case 112:
        return "Jun";
    case 113:
        return "Jul";
    case 114:
        return "Ago";
    case 115:
        return "Sep";
    case 116:
        return "Oct";
    case 117:
        return "Nov";
    case 118:
        return "Dic";
    case 119:
        return "Aries";
    case 120:
        return "Tauro";
    case 121:
        return "Géminis";
    case 122:
        return "Cáncer";
    case 123:
        return "Leo";
    case 124:
        return "Virgo";
    case 125:
        return "Libra";
    case 126:
        return "Escorpio";
    case 127:
        return "Sagitario";
    case 128:
        return "Capricornio";
    case 129:
        return "Acuario";
    case 130:
        return "Piscis";
    case 131:
        return "Todos";
    case 132:
        return "Solo con textos largos";
    case 133:
        return "Solo recientemente activos";
    case 134:
        return "De todo el mundo";
    case 135:
        return "Advertencia##Debe estar logueado para auto-buscarse";
    case 136:
        return "Familiar";
    case 137:
        return "Agricultor";
    case 138:
        return "Cocinero";
    case 139:
        return "Artesano";
    case 140:
        return "Minero";
    case 141:
        return "Herrero";
    case 142:
        return "Médico";
    case 143:
        return "Líder";
    case 144:
        return "Defensor";
    case 145:
        return "Guerrero";
    case 146:
        return "Cepulturero";
    case 147:
        return "Mago";
    case 148:
        return "Sacerdote";
    case 149:
        return "Artista";
    case 150:
        return "Deportista";
    case 151:
        return "Payaso";
    case 152:
        return "Acompañante";
    case 153:
        return "Comerciante";
    case 154:
        return "Limpiador";
    case 155:
        return "Hippie";
    case 156:
        return "Domesticador";
    case 157:
        return "Piloto";
    case 158:
        return "Mensajero";
    case 159:
        return "Escritor";
    case 160:
        return "Ingeniero";
    case 161:
        return "Arquitecto";
    case 162:
        return "Asesino";
    case 163:
        return "Científico";
    case 164:
        return "Roles";
    case 165:
        return "Zonas";
    case 166:
        return "Emociónes";
    case 167:
        return "Zodiaco";
    case 168:
        return "Fem";
    case 169:
        return "Wat";
    case 170:
        return "Gro";
    case 171:
        return "Air";
    case 172:
        return "Bad";
    case 173:
        return "Neu";
    case 174:
        return "Goo";
    case 175:
        return "Pro";
    case 176:
        return "Promedio";
    case 177:
        return "Oficial";
    case 178:
        return "Record";
    case 179:
        return "Semanal:";
    case 180:
        return "Total:";
    case 181:
        return "Advertencia##Debe estar logueado para hacer simulación oficial";
    
    // para nombre de zona
    case 200:
        return "Norteamérica (Canadá)";
    case 201:
        return "Norteamérica (USA)";
    case 202:
        return "Norteamérica (México)";
    case 203:
        return "Sudamérica (Colombia)";
    case 204:
        return "Sudamérica (Brazil)";
    case 205:
        return "Sudamérica (Argentina)";
    case 206:
        return "Europa (España)";
    case 207:
        return "Europa (Inglaterra)";
    case 208:
        return "Europa (Alemania)";
    case 209:
        return "Europa (Rusia)";
    case 210:
        return "Oriente (Arabia)";
    case 211:
        return "Oriente (India)";
    case 212:
        return "Oriente (China)";
    case 213:
        return "África (Egipto)";
    case 214:
        return "África (Congo)";
    case 215:
        return "África (Sudáfrica)";
    case 216:
        return "Oceanía (Australia)";
    case 217:
        return "Norteamérica";
    case 218:
        return "Sudamérica";
    case 219:
        return "Europa";
    case 220:
        return "Oriente";
    case 221:
        return "África";
    case 222:
        return "Mundo (Todos)";
    
    // para nombres de comportamientos
    case 300:
        return "Defender su país, no irse";
    case 301:
        return "Atacar un país al azar";
    case 302:
        return "Atacar al país más fuerte";
    case 303:
        return "Atacar al país más débil";
    case 304:
        return "Atacar al país más cercano";
    case 305:
        return "Mantenerse en grupo, seguir grupo";
    case 306:
        return "Seguir a otro ciudadano al azar";
    
    // mensajes HTTP
    case 400:
        return "Error##Desconocido";
    case 401:
        return "Error##Conexón del servidor";
    case 402:
        return "Error##Base de datos del servidor";
    case 403:
        return "Error##Versión de la App es inadecuada";
    case 404:
        return "Error##Parámetros insuficientes";
    case 405:
        return "Error##Solicitud del servidor";
    case 406:
        return "Advertencia##El nombre de usuario ya existe";
    case 407:
        return "Advertencia##No se ha encontrado lo buscado";
    case 408:
        return "Advertencia##Debe editar una vez cada hora";
    case 409:
        return "Éxito##Registrado, revise su correo";
    case 410:
        return "Advertencia##Ingrese un correo o nombre válido";
    case 411:
        return "Advertencia##La contraseña debe tener almenos 6 caracteres";
    case 412:
        return "Éxito##Información actualizada";
    case 413:
        return "Advertencia##Actualice los datos en la pestaña de la bandera";
    
    // titulos de los temas del libro
    case 500:
        return "Sobre DelRow";
    case 501:
        return "Login y Registro";
    case 502:
        return "Tratamiento de Datos";
    case 503:
        return "Perfil Iconos";
    case 504:
        return "Perfil Edición";
    case 505:
        return "Búsqueda de Perfiles";
    case 506:
        return "Casa (Familiar)";
    case 507:
        return "Cultivo (Agricultor)";
    case 508:
        return "Panadería (Cocinero)";
    case 509:
        return "Sastrería (Artesano)";
    case 510:
        return "Mina (Minero)";
    case 511:
        return "Metalistería (Herrero)";
    case 512:
        return "Hospital (Médico)";
    case 513:
        return "Foro (Líder)";
    case 514:
        return "Torre (Defensor)";
    case 515:
        return "Cuartel (Guerrero)";
    case 516:
        return "Cementerio (Cepulturero)";
    case 517:
        return "Ritual (Mago)";
    case 518:
        return "Templo (Sacerdote)";
    case 519:
        return "Conservatorio (Artista)";
    case 520:
        return "Gimnasio (Deportista)";
    case 521:
        return "Juegos (Payaso)";
    case 522:
        return "Motel (Acompañante)";
    case 523:
        return "Mercado (Comerciante)";
    case 524:
        return "Basurero (Limpiador)";
    case 525:
        return "Parque (Hippie)";
    case 526:
        return "Criadero (Domesticador)";
    case 527:
        return "Puerto (Piloto)";
    case 528:
        return "Mensajería (Mensajero)";
    case 529:
        return "Biblioteca (Escritor)";
    case 530:
        return "Turbina (Ingeniero)";
    case 531:
        return "Edificio (Arquitecto)";
    case 532:
        return "Bar (Asesino)";
    case 533:
        return "Laboratorio (Científico)";
    case 534:
        return "Comportamiento Parte 1";
    case 535:
        return "Comportamiento Parte 2";
    case 536:
        return "Estadísticas Actualización";
    case 537:
        return "Estadísticas General";
    case 538:
        return "Estadísticas Datos";
    case 539:
        return "Guerra Íconos";
    case 540:
        return "Guerra Botones";
    case 541:
        return "Guerra Personalizada";
    case 542:
        return "Simulador Comandos";
    case 543:
        return "Simulador Unidades";
    case 544:
        return "Simulador Centros";
    case 545:
        return "Sobre Este Libro";
    
    // parrafos de los temas del libro
    case 700:
        return "Software interactivo creado por Omar Jordán (Omwekiatl), Colombia 2021 (v$).##" +
            "Comunidad virtual que alimenta a una simulación de guerra mundial, puede:##" +
            "- Personalizar su ávatar.#" +
            "- Expresar algo textualmente.#" +
            "- Buscar otros perfiles.#" +
            "- Seleccionar la zona mundial que apoya.#" +
            "- Elegir su rol en la sociedad.#" +
            "- Escoger un modo de comportamiento.#" +
            "- Ver el estado de guerra actual y estadísticas.##" +
            "Esta versión para PC tiene el motor de simulación, con parámetros avanzados.##" +
            "Idioma oficial: español.";
    case 701:
        return "Para registrarse utilice un correo electrónico, al cual le llegará una clave.##" +
            "Para loguearse utilize el correo con que se registró o el nombre de usuario; " +
            "al registrarse verá en su correo un nombre de usuario y contraseña aleatorios, " +
            "estos pueden cambiarse.##" +
            "La tercera barra del login es para poner una nueva contraseña, en caso de que " +
            "desee cambiar la anterior, tenga precaución, No use contraseñas importantes.##" +
            "Si no recuerda su contraseña, registrese de nuevo para obtener una aleatoria.##" +
            "Shift + Borrar: limpia linea de texto.";
    case 702:
        return "Su información no será vendida ni compartida con terceros, tampoco se usará " +
            "para promocionar publicidad, pero las estadísticas globales de la comunidad si pueden " +
            "ser vistas públicamente, de eso se trata esto.##" +
            "Su Contraseña es guardada con criptografía, pero procure ser precavido.##" +
            "Usted puede expresar lo que quiera en su perfil, no hay censura ni prohibiciónes, " +
            "por lo que No es un sistema apto para menores o gente sensible; aún así confiamos " +
            "en su ética (pórtese bien creep).";
    case 703:
        return "Sobre Imagen: Nombre / Zona / Rol.#" +
            "Imagen: Edificio (Rol) / Ávatar / Zodiaco.#" +
            "Bajo Imagen: Texto libre, Comportamiento.##" +
            "Abajo izquierda, fechas de:#" +
            "- Registro en el sistema.#" +
            "- Modificación de peril.#" +
            "- Última vez activo.##" +
            "Botones abajo derecha:#" +
            "- Cerrar sesión (desloguearse).#" +
            "- Editar perfil (1 vez cada hora).";
    case 704:
        return "- Modifique su nombre (deberá ser único).#" +
            "- Modifique la zona que apoya.#" +
            "- Modifique ávatar con las flechas verdes.#" +
            "- Escriba algo (fondo rojizo indica vasto).#" +
            "- Modifique el comportamiento.##" +
            "Botones abajo derecha:#" +
            "- Verde: cancelar edición.#" +
            "- Rojo: aceptar y enviar cambios.##" +
            "Shift + Borrar: limpia linea de texto.#" +
            "Puede copiar y pegar (Ctrl + C) (Ctrl + V).";
    case 705:
        return "Puede buscar un perfil de usuario si tiene su nombre o correo, escríbalo y pulse " +
            "la lupa; o pulse el monigote si busca su propio perfil.##" +
            "La búsqueda aleatoria permite filtrar por:#" +
            "- Zona.#" +
            "- Perfiles con texto vasto.#" +
            "- Activos hace menos de una semana.##" +
            "Pulse el dado para hacer búsqueda.##" +
            "Una vez en un perfil, hay dos botones para:#" +
            "- Hacer otra búsqueda.#" +
            "- Tomar un pantallazo (png).";
    case 706:
        return "Todos pueden tener un oficio y un hogar con hijos, bueno aquí no, resulta que " +
            "este rol representa a aquellos que viven por su familia, su hogar, criar y " +
            "educar a su descendencia; habitan una cómoda casa y se asocian con una pareja " +
            "que profese el mismo interés; quizá es el rol más antiguo y natural.##" +
            "Son unidades básicas, sus habilidades y parámetros son los que tendría un " +
            "mundo sin roles, pero... portan media semilla, y cuando dos de este mismo " +
            "rol se encuentran enjendran a un enjendro, que crecerá y será un habitante más.";
    case 707:
        return "Son la base de la subsistencia de un pueblo o ciudad, sin alimento dudosamente " +
            "la población se halle contenta, o viva... habitualmente se los halla en verdes " +
            "y vastos campos, con pozos para extraer agua subterránea, y rodeados de " +
            "vegetales como: avena, banano, maíz, fríjol, quinoa, cacao, maní, trigo.##" +
            "En la batalla tienen un aúra de alimentación, por lo tanto dan comida " +
            "a los aliados; las unidades alimentadas al estar más alentadas atacan " +
            "más rápido lo que les da ventaja; pero es comida cruda, así que su efecto " +
            "dura poco, deben permanecer en el aura.";
    case 708:
        return "Quién no ama el olor a pan caliente, o cualquier alimento recién hecho, pues " +
            "evocar esa sensación es el trabajo de este rol, y vale, también alimentar... " +
            "se encarga de convertir la cosecha en un manjar nutritivo, su especialidad es: " +
            "avena con canela, torta de banano, arepa de maíz, hamburguesa de fríjol, " +
            "galletas de quinoa, postre de chocolate, pastel de frutos secos.##" +
            "Alimenta a un aliado a la vez, es decir, cada que ejecuta su habilidad " +
            "especial; las unidades alimentadas al estar más alentadas atacan más rápido " +
            "lo que les da ventaja; el efecto de esta buena comida dura mucho tiempo.";
    case 709:
        return "Mucha habilidad en las manos, paciencia y las ideas necesarias para transformar " +
            "un pedazo de material en... un material más valioso; ya sea hacer ropa para " +
            "vestir, lucir y proteger del fío, zapatos para bailar, mobiliario para " +
            "hacer visita o dormir soñando con un mundo sin guerras, ellos lo harán.##" +
            "Cada que se dispara su habilidad especial, vestirá a una unidad aliada con " +
            "una genial capa a prueba de golpes, esto da a la unidad una armadura que " +
            "se va gastando con los golpes recibidos.";
    case 710:
        return "Estos topos de las entrañas de la tierra extraen la materia prima para todas " +
            "las actividades de manufactura, no les importa el ruido de las máquinas " +
            "trituradoras ni repirar el denso aire subterráneo, eso si, incansables buscan " +
            "encontrar el oro, el diamante, el adamantium para hacerse un anillo o un diente.##" +
            "Son buenos en el asedio, pueden derribar al centro urbano enemigo como si fuese " +
            "solo otra frágil piedra, también recolectan lo valioso en sus asedios para " +
            "reparar al centro urbano propio.";
    case 711:
        return "Este ciudadano con manos ásperas no se incomoda con el calor de la fundidora, " +
            "permanece allí transformando los minerales crudos en artefactos cotidianos " +
            "como: ollas, vasos, pedestales, rejas, y todo tipo de retorcijón de hierro; " +
            "entre ellos uno que otro machete, espada, hacha de combate...##" +
            "Cada tanto tiempo crea un arma extra y la dá a un aliado, las unidades con " +
            "esta arma adicional tienen más ataque, pero no todo es perfecto, así que " +
            "tarde que temprano y con algo de mala suerte el arma se romperá.";
    case 712:
        return "Salud, lo primordial para el vivir y más aún para el buen vivir; este rol " +
            "se encarga de velar por el bienestar de los suyos; antes de llegar al extremo " +
            "de una cirujía o consumir fuertes químicos, procuran propagar buenos hábitos " +
            "como son: hidratarse bien, hacer ejercicio (flexibilidad + cardio), estar " +
            "alegres y sin estrés, comer balanceado sin grasas, ni azúcares y pocas carnes, " +
            "respirar profundamente, dormir bien, y de vez en cuando un ayuno con especias " +
            "curativas.##" +
            "Y bueno, en cuanto a la simulación, ellos curan a los aliados, sea de " +
            "daño físico o infexiónes virales.";
    case 713:
        return "Siempre ha habido esos habitantes que tienen voz de mando, hiperactividad " +
            "para hacer proyectos y fuerte sentido del honor y altruismo, este rol " +
            "ofrece en la sociedad la capacidad para agrupar y dirigir ideas, proyectos, " +
            "iniciativas, protestas; para ello debe escuchar a los otros, abrir foros de " +
            "debate, poner órden y lo más importante, dar ejemplo.##" +
            "Independiente del comportamiento de otros aliados, este rol los persuade para " +
            "que lo sigan, armando así un pequeño grupo, de esta forma no " +
            "irá solo, otra ventaja de esto es que los miembros se " +
            "sincronizarán a la hora de responder a un ataque a uno de ellos.";
    case 714:
        return "Es el equivalente a un policía, su especialidad es la protección por lo que " +
            "porta un gran escudo, más que ir a una guerra su misión es poner órden " +
            "dentro de una sociedad, haciendo que las personas se sientan seguras, " +
            "neutralizando a cualquier amenaza.##" +
            "Es la unidad más resistente, esa es su habilidad; por otra parte aporta " +
            "como edificio una torre, esta dispara al enemigo, pero es más lenta que las " +
            "torres de campaña hechas directamente en el campo de guerra, aún así estas " +
            "últimas se derriban fácil en comparación a la interna.##" +
            "Resistente ante ataques de delincuentes y explosivos.";
    case 715:
        return "Es el equivalente a un militar, este es un guerrero brutal que sale al " +
            "campo de batalla con sed de sangre, destrozando al enemigo.##" +
            "quizá estés pensando que en un juego de guerra qué sentido tendrán los " +
            "otros roles, bueno hay un balance, no te dejes engañar, todos los roles " +
            "tienen ventajas y desventajas, y la comunidad se expresa con todos por " +
            "cuestión de gustos... pero si, este se distingue por ser el que tiene mayor " +
            "ataque (habilidad pasiva).";
    case 716:
        return "Es una rareza, así como un cuervo, con melancolía y pensamiento profundo " +
            "ha visto muchos entierros, muchas lágrimas, muchos finales; suelen ser " +
            "entes solitarios y meditabundos, su papel es darle descanso y posada a " +
            "los difuntos; la muerte, el mayor misterio de la vida, este rol lo vive " +
            "constantemente y es bueno para dar consejo a los dolientes.##" +
            "Cuando en el campo de batalla mata a un enemigo recupera puntos de vida, " +
            "como si de un vampiro se tratase.";
    case 717:
        return "Ser extraño que se dedica a las artes arcanas, a lo místico, a la brujería, " +
            "por lo mismo suele guardar silencio respecto a lo que sabe, se dice que " +
            "pasa más tiempo viajando en sus sueños y meditaciónes que en la vida misma; " +
            "procura ejecutar la gran obra alquímica, escudriña los secretos del cosmos y " +
            "tiene charlas con las más diversas entidades.##" +
            "Al morir se convierte en un espectro que sigue al enemigo dádole mala " +
            "suerte en sus ataques, esto es un efecto de aura, por lo que afecta a varios " +
            "a la vez; en vida difícilmente puede ser convertido por sacerdotes.";
    case 718:
        return "Tiene un templo al cuál dedica su devoción de por vida, este templo a su vez " +
            "simboliza a un dios de los varios que hay, unos más antiguos que otros, unos " +
            "más olvidados y otros más de moda; vela por la moral de la sociedad, " +
            "sopesando sus cargas emocionales con la promesa de una ayuda suprema.##" +
            "Su función es convertir ideológicamente a alguna unidad, lo que significa que " +
            "puede volver aliado a un enemigo, pero esto es una probabilidad con un único " +
            "intento, mismo que puede verse afectado por los efectos de suerte, por ej: " +
            "tendrá un bajo chance ante la maldición de un espectro.";
    case 719:
        return "Música, pintura, escultura, canto, actuación... muy diversa y bella es la " +
            "gama del arte y su infinita manifestación, este rol sin duda plasma los " +
            "sueños y pesadillas en papel y sonido, toda sociedad necesita expresarse, " +
            "esta es la forma más trascendental.##" +
            "En la batalla llevará una guitarra, la cual polarizará el aire con " +
            "inspiración, dando mejor suerte a los ataques de los aliados; aún así, " +
            "este efecto es pasajero por lo que requiere la presencia constante del aura.";
    case 720:
        return "Un ser muy enérgico, flexible, fuerte, incansable, diestro, que solo vive " +
            "para estar metido en su gimansio o recorriendo el mundo sin detenerse, " +
            "ama competir y sentir que es cada vez mejor que si mismo y que los demás; " +
            "su único objetivo es romper metas, goza de salud inigualable pero está " +
            "a merced de múltiples lesiónes.##" +
            "Corre y nada más rápido que cualquier otro, lo que le da gran mobilidad en " +
            "el campo de batalla, también tiene la capacidad de dar un gran golpe " +
            "la primer vez que ataca, como una embestida con su inercia acumulada.";
    case 721:
        return "Juegos de azar, Ajedréz, damas chinas, escalera, Parques, Poker, Uno, " +
            "Magic, charadas y mucho más, eso encuentras aquí, en el edificio de " +
            "este simpático, extrovertido y feliz personaje; definitivamente no hay " +
            "nada como el ocio y la risa, pero cuidado te envicias jajaja.##" +
            "Toda una ruleta Rusa, este rol carga consigo una bomba de alta potencia " +
            "con la cual puede desprender la carne del hueso, de si mismo, de sus aliados " +
            "y por supuesto del enemigo; la explosión es al azar cuando recibe daño.";
    case 722:
        return "Una sociedad sana expresa su sexualidad sin tabúes ni moralidades extremas, " +
            "aquí este rol ofrece un lugar para juegos eróticos, ya sea con ánimo " +
            "reproductivo o mejor aún por ocio; y como si no fuera suficiente, presta " +
            "sus servicios de compañía especial (con libertad de elección).##" +
            "Escoge a solo un aliado y lo ilumina, lo que le dará más puntos de vida, " +
            "de ataque e inmunidad a efectos de otros roles; este le seguirá y " +
            "al morir uno de los dos, el vínculo con sus beneficios se rompe para siempre; " +
            "la debilidad del aliado iluminado es su acompañante básico.";
    case 723:
        return "Los productos hechos por la manufactura necesitan venderse, comercializarse, " +
            "esa es la función de este rol, que además por su carisma también sabe hacer " +
            "buenos trueques pues no siempre hay dinero en tiempos difíciles; su edificio " +
            "es todo un pasatiempo para quienes buscan artilugios poco necesarios; es " +
            "por demás un experto en hacer fortunas, saca monedas de donde no las hay.##" +
            "Puede tomar las armas y capas protectoras de los enemigos y quedárslas, " +
            "o dárselas a un aliado; básicamente convierte la manufactura enemiga en " +
            "bienes para los aliados.";
    case 724:
        return "Tiene una obsesión por ver todo limpio, se preocupa mucho por la disposición " +
            "de los desechos, su lema es Reduce, Reutiliza, Recicla; pues con esto " +
            "se contribuye a reducir la contaminación; le gusta ver los basureros " +
            "ordenados por Papel, Plásticos, Electrónicos y Orgánicos, pues esto " +
            "reduce el trabajo en su edificio; también poda el césped.##" +
            "La guerra deja muchos cadáveres descompuestos, toda una suciedad, este rol " +
            "gana un poco de vida con cada cadáver que procesa.";
    case 725:
        return "Una ciudad necesita parques y reservas naturales, para el disfrute, " +
            "recreación y conexión con la fauna y flora; este ser protege estos " +
            "espacios y por ahí derecho lleva una vida un poco desapegada de la urbe; " +
            "su sangre tiene cierta dosis de hongos alucinógenos.##" +
            "Puede bajo la presión de la protesta pacífica, quitarle a los enemigos " +
            "su rol, despojándolos de su habilidad especial, esto lo hace de uno en uno " +
            "cada vez que activa su habilidad.";
    case 726:
        return "La relación del humano con otros seres de la naturaleza es milenaria, como " +
            "animales de carga, caza, compañía, consumo; este rol cria perri-gatos y " +
            "los domestica y entrena, para que sirvan como compañía a todo tipo de " +
            "personas, todos sabemos que hay quienes les ven como familiares incluso.##" +
            "Cuando ve a un enemigo, puede llamar a solo un perri-gato para que lo " +
            "ayude a pelear, este ente le seguirá siempre, tiene menos ataque y vida que " +
            "un humano y suele morir de pena moral si su dueño muere.";
    case 727:
        return "Vivimos en un mundo físico, con distancias que separan todos los puntos, " +
            "transportar algo o a alguien de A a B ha sido un desafío de optimización " +
            "de siempre, el globo o los dirigibles han sido el vehículo voldador óptimo; " +
            "en este edificio prestan sus servicios para atravezar largas distancias.##" +
            "Da globos a los aliados cuando están en el agua, de esta forma pueden " +
            "llegar más rápido al destino, en tierra el globo desciende; es de recalcar " +
            "que los combates acuáticos dan ventaja a quien va en globo.";
    case 728:
        return "Quieres expresar algo a alguien, una emoción, idea o negocio, pero " +
            "se halla lejos, bueno este rol y edificio permiten dejar ese mensaje en " +
            "manos expertas, tal como si existiera el telégrafo.##" +
            "Estratégico, si su comportamiento es defender: persuadirá a aliados que " +
            "defienden de que ataquen al enemigo vecino, sin descuidar la defensa; si " +
            "su comportamiento es seguir a alguien: incentivará a aliados para defender " +
            "centro vulnerable o sino que los que defienden ataquen agrupados; para " +
            "otro comportamiento: hará que aliados se comporten como él.##" +
            "Al llegar a un centro enemigo, solo una vez, trasladará una unidad en " +
            "cola de creación, de ese centro al suyo.";
    case 729:
        return "Una mezcla de profesor y artista, pues gusta enseñar y transmitir el " +
            "conocimiento, y también gusta escribir cosas reales o irreales; su " +
            "edificio está lleno de libros, de toda temática, ciencia, literatura, " +
            "espiritualidad, biografías, historia, filosofía, estilo de vida, etc.##" +
            "Da mejor suerte a los ataques de los aliados, afectando de a uno por vez; " +
            "este beneficio es muy duradero y tiene altos chances de golpe crítico, " +
            "porque el conocimiento es poder.";
    case 730:
        return "Ofrece la energía, el manejo del fuego ya quedó en antaño, lo nuevo es " +
            "el dominio del rayo (al menos para esta época simulada), las turbinas " +
            "eólicas ofrecen energía limpia para todos, y qué hacer con ella? bueno " +
            "un sueño de la humanidad ha sido crear un homúnculo, un gólem; hagamos " +
            "uno de hojalata con inteligencia artificial.##" +
            "Crea un robot, este tiene tiempo de vida limitado por sus baterías, pero " +
            "cualquier aliado con este rol puede reemplazarlas; gigante pero no ataca, aún " +
            "así es un resistente señuelo y un derribador de torres por excelencia; " +
            "se debilita con el agua, se comporta como quién lo programó o re programó.";
    case 731:
        return "Qué sería de una sociedad sin edificaciónes, sean estas una choza o un " +
            "rascacielos, este ser crea lo más grande y denso de una ciudad, sin " +
            "olvidar que su meta es ofrecer confort, funcionalidad, optimización y " +
            "menor impacto ambiental; aporta un edificio para que vivan varios ciudadanos.##" +
            "En el campo de batalla puede poner una torre de campaña que dispara al " +
            "enemigo, esta no es atacada por los ciudadanos dada su dureza; en lugar de " +
            "hacer una nueva puede subir de nivel una existente.";
    case 732:
        return "No todos los que viven en la sociedad trabajan para mejorarla, hay quienes " +
            "por motivos personales crean conflictos, ladrones, asesinos, mafiosos, son " +
            "sujetos difíciles y se los suele encontrar en ambientes nocturnos, bebiendo " +
            "cerveza mezclándose entre ciudadanos honestos.##" +
            "De vez en cuando atacan a traición a sus aliados, suele ser un golpe fuerte " +
            "por ser sorpresa; hay un pequeño chance de recibir daño de vuelta, en general " +
            "este rol lo escoge quien desee sabotear la zona desde dentro.";
    case 733:
        return "Se dice que estos sujetos están locos, escudriñan cada cosa que ven, desde " +
            "las profundidades del espacio exterior, hasta la intimidad de las moléculas, " +
            "su lenguaje es la matemática y su léxico es complejo; en el edificio que aportan " +
            "se suelen llevar a cabo muchos experimentos para comprobar hipótesis.##" +
            "En sus frascos han cultivado un virus muy letal, capaz de matar y transmitirse, " +
            "ahora lo usan en la guerra para contagiar de a un enemigo a la vez; este " +
            "ataque es similar al veneno, hay chance de curarse o dañarse.";
    case 734:
        return "Defensivo:#" +
            "Las unidades buscan un centro urbano propio o aliado y se quedan cerca de este, " +
            "cuando es guerra por continentes, pueden ver si un centro está siendo asediado " +
            "y acudir a él.##" +
            "Atacar al Azar:#" +
            "Escogerán un centro enemigo al azar e irán a él, esto puede crear dispersión de " +
            "las tropas, también hay ciertos casos en que se puede re calcular el destino.##" +
            "Atacar al Más Fuerte / Débil:#" +
            "Ponen como objetivo al centro enemigo que posea la mayor / menor cantidad de " +
            "unidades disponibles, es decir, sumar las vivas con las de reserva.";
    case 735:
        return "Atacar al Vecino:#" +
            "Garantiza que el centro enemigo objetivo sea el más cercano a la unidad que " +
            "en el momento busca a quién atacar.##" +
            "Mover en Grupo:#" +
            "Los centros calculan unos cuantos círculos de grupos, las unidades de dicho " +
            "centro que tengan este comportamiento, se reunirán en uno de esos círculos; " +
            "también en modo continentes las unidades pueden elegir un círculo aliado.##" +
            "Seguir a Otra Unidad:#" +
            "Se seleccióna un ciudadano aliado al azar para seguirlo, pero este No debe " +
            "estar en comportamiento defensivo o de seguidor; además si no encuentra a " +
            "alguien, tenderá a volver a su centro urbano.";
    case 736:
        return "Este software es de acciónar desapresurado, las estrategias y ediciónes de " +
            "perfil se manejan con calma, por lo mismo, las estadísticas globales se " +
            "actualizan cada hora, así como la posibilidad de editar perfil.##" +
            "¡Los cambios que haga se verán dentro de 1 hora en las estadísticas!";
    case 737:
        return "En la parte superior puede selecciónar la zona o país a observar, la selección " +
            "se verá reflejada en el mapa en color rojo.##" +
            "Bajo el mapa puede ver:#" +
            "- Número de usuarios en la zona.#" +
            "- Porcentaje de féminas respecto al total.#" +
            "- Cantidad de usuarios activos.#" +
            "- Récord de usuarios activos.##" +
            "Un usuario está activo si estuvo en la aplicación durante la última semana.";
    case 738:
        return "Puede cambiar el tipo de dato a observar para la zona escogida:#" +
            "- Roles: usuarios en cada rol.#" +
            "- Zonas: respecto a la zona actual.#" +
            "- Emociones: según las caras del ávatar.#" +
            "- Zodiaco: signos para la zona.##" +
            "La idea es ver los roles pero no los comportamientos, de esta manera se puede " +
            "hacer una estratégia colectiva objetiva para los roles, e intuitiva o externa " +
            "para el comportamiento.##" +
            "- El botón de salvado permite exportar datos.#" +
            "- El botón cámara toma un pantallazo.";
    case 739:
        return "Arriba, número de simulaciónes:#" +
            "Semanales (se limpiarán) / Acumulado.##" +
            "Puede selecciónar la zona que desea observar, esto se reflejará en el mapa " +
            "en color rojo.##" +
            "La primera simulación de la semana es la Oficial, con el resto se Promedian, y el " +
            "Récord es de todo el tiempo.##" +
            "Los datos indican el puesto de la zona, es 1 el mejor lugar, pueden repetirse " +
            "si empatan.##" +
            "Íconos: puntaje técnico, enemigos cazados, asedio hecho, zonas conquistadas, " +
            "tiempo vivo, unidades disponibles, total unidades, vida final.";
    case 740:
        return "Los 4 botones de la parte inferior inician guerra:#" +
            "1 Demostración con datos al azar.#" +
            "2 Demostración con datos personalizados.#" +
            "3 Datos oficiales pero de refriega.#" +
            "4 Datos y resultados oficiales.##" +
            "- Modo países / modo continentes.#" +
            "- El botón cámara toma un pantallazo.##" +
            "Los datos personalizados tienen el formato del archivo (txt) obtenido en el menú " +
            "de estadísticas.##" +
            "La guerra oficial será a pantalla negra, los resultados se suben al servidor, esto " +
            "es para evitar finalizar simulaciónes a conveniencia.";
    case 741:
        return "Obtenga el archivo (txt) como se indicó para el menú de estadísticas.##" +
            "En él verá varias matrices, la que nos interesa es la de (rol), allí puede cambiar " +
            "los valores según cuántas unidades quiere en cada uno, para cada zona.##" +
            "Las columnas son los roles como los ve en el encabezado (rol).#" +
            "Las filas son las zonas, como las ve en el encabezado (countries).##" +
            "Los comportamientos se pondrán al azar siempre; luego la (active population) " +
            "define usuarios activos, ponga un número muy alto si desea.";
    case 742:
        return "- Hacer zoom con la rueda del mouse.#" +
            "- Mover la cámara con clic-derecho.#" +
            "- Selecciónar entidades con clic-izquierdo.#" +
            "- Abandonar la simulación con Escape.#" +
            "- Acelerar o ralentizar con Arriba y Abajo##" +
            "Superior izquierda: información general, velocidad final dependerá de su PC, " +
            "datos oficiales o no.##" +
            "Superior derecha: información general: población máxima, unidades vivas, " +
            "entes vivos, récord entes vivos, total entes creados.#" +
            "Luego los 3 mejores según: unidades disponibles, enemigos cazados, asedio " +
            "hecho, zonas conquistadas.#" +
            "Finalmente, los puestos según vitalidad.##" +
            "Izquierda abajo, contextual (selección).";
    case 743:
        return "El género y zodiaco No afectan la simulación, pero si el estado activo, se da " +
            "bonus de vida.##" +
            "Las entidades se pueden mover por tierra o agua, esto úlimo ralentiza movimiento " +
            "y ataque; pueden ir hacia un enemigo, un aliado o centro urbano, también se " +
            "detectan colisiónes.##" +
            "Cada tanto buscarán enemigos en su rango de visión y atacarán si están cerca, " +
            "con una pequeña aleatoriedad; también cada tanto se ejecutarán las habilidades " +
            "especiales de cada rol.##" +
            "Los roles que aplican efectos a otras unidades no pueden auto aplicarse, " +
            "tampoco afectan a aliados o enemigos del mismo rol, por ej: un médico No " +
            "puede curarse ni curar a otro médico.";
    case 744:
        return "Cada centro urbano posee una población inicial, de la cual solo puede tener " +
            "un límite de unidades vivas a la vez, e irá evocando más a medida.##" +
            "Los puntos de vida de cada centro son un valor base más la población inicial, " +
            "cada cierto tiempo se calculan la cantidad de enemigos y aliados cercanos, el " +
            "asedio recibido es la diferencia de esto con un límite.##" +
            "Los roles de unidades se escogen según azar con prioridad, los comportamientos " +
            "encambio solo al azar.##" +
            "Cada centro calcula la posición de unos cuantos círculos de agrupación, lo " +
            "hace buscando agrupamientos de unidades, centros enemigos y grupos enemigos.";
    case 745:
        return "Para navegar más rápidamente utilice las teclas Izquierda / Derecha; " +
            "pulse Enter para navegar a una página al azar, Espacio para rol al azar.##" +
            "El número en la imagen de la primera página es el total de usuarios registrados.##" +
            "Nota:#";
    
    // mini nombre de zona
    case 900:
        return "Can";
    case 901:
        return "USA";
    case 902:
        return "Mex";
    case 903:
        return "Col";
    case 904:
        return "Bra";
    case 905:
        return "Arg";
    case 906:
        return "Esp";
    case 907:
        return "Ing";
    case 908:
        return "Ale";
    case 909:
        return "Rus";
    case 910:
        return "Ara";
    case 911:
        return "Ind";
    case 912:
        return "Chi";
    case 913:
        return "Egi";
    case 914:
        return "Con";
    case 915:
        return "Sud";
    case 916:
        return "Aus";
    case 917:
        return "N.A";
    case 918:
        return "S.A";
    case 919:
        return "EUR";
    case 920:
        return "ORI";
    case 921:
        return "AFR";
    case 922:
        return "TOT";
    
    // para nombres de comportamientos abreviados (no traducir)
    case 1000:
        return "Defen";
    case 1001:
        return "A.aza";
    case 1002:
        return "A.fue";
    case 1003:
        return "A.déb";
    case 1004:
        return "A.cer";
    case 1005:
        return "Grupo";
    case 1006:
        return "Segui";
    
    // abreviacion roles (no traducir)
    case 1100:
        return "Fami";
    case 1101:
        return "Agri";
    case 1102:
        return "Coci";
    case 1103:
        return "Arte";
    case 1104:
        return "Mine";
    case 1105:
        return "Herr";
    case 1106:
        return "Médi";
    case 1107:
        return "Líde";
    case 1108:
        return "Defe";
    case 1109:
        return "Guer";
    case 1110:
        return "Cepu";
    case 1111:
        return "Mago";
    case 1112:
        return "Sace";
    case 1113:
        return "Arti";
    case 1114:
        return "Depo";
    case 1115:
        return "Paya";
    case 1116:
        return "Acom";
    case 1117:
        return "Come";
    case 1118:
        return "Limp";
    case 1119:
        return "Hipp";
    case 1120:
        return "Dome";
    case 1121:
        return "Pilo";
    case 1122:
        return "Mens";
    case 1123:
        return "Escr";
    case 1124:
        return "Inge";
    case 1125:
        return "Arqu";
    case 1126:
        return "Ases";
    case 1127:
        return "Cien";
    
    default: return "";
}

