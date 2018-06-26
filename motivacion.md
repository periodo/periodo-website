---
title: Motivación
motivation: true
en: /motivation/
---

<!-- note: MUST leave blank lines after paragraphs -->

<section>
## Linked Data para las ciencias humanas

En los últimos años, las posibilidades de investigación en las ciencias humanas se han expandido enormemente, no solo como resultado del incremento exponencial de datos disponibles en línea, sino que también a través del desarrollo de herramientas digitales que permiten la extracción automática, mediada a través de computadoras, y la visualización de información proveniente de textos y bases de datos. Aun así, las ciencias humanas son, por lo general, mucho más diversas e idiosincráticas en cuanto a terminologías y ontologías que otras áreas de investigación, y conforme los datos se incrementan, se hace más y más difícil encontrar la información que necesitamos. Una solución a esta proliferación de datos ha sido el esfuerzo de establecer vocabularios y listas estandarizadas de entidades como gente o lugares que sean generalmente aceptadas. La creación de índices de topónimos que listan locaciones geográficas junto con coordenadas y nombres alternos, por ejemplo, ha permitido extraer mapas de referencias textuales a lugares [@Grover2010]. Mientras que dicha centralización ha sido exitosa dentro de la geografía, ha sido difícil implementarla en muchas otras áreas de las ciencias humanas, en especial aquellas que tratan conjuntos de datos extremadamente diversos y heterogéneos a través de fronteras internacionales. En algunas disciplinas, como la arqueología, la adaptación a terminologías estandarizadas ha sido especialmente lenta, a pesar inclusive de la emergencia de sistemas de manejo de datos. Por ende, ha habido un esfuerzo reciente que busca desarrollar acercamientos que involucren el "loose coupling" de conjuntos de datos arqueológicos, o sea, el uso de formatos semánticos para describir información con el fin de que se puedan observar relaciones entre objetos inclusive si las terminologías y esquemas de metadatos que se utilizan para describirlos son distintos. Las relaciones se establecen no a través de vocabularios compartidos sino más bien puntos de referencia en común. La información que se describe de esta manera se conoce como [Linked Data][ldata]. Los puntos de referencia los proveen identificadores de recursos uniformes ([Uniform Resource Identifiers][uri], o URIs).

</section>

[uri]: https://es.wikipedia.org/wiki/Identificador_de_recursos_uniforme
[ldata]: https://es.wikipedia.org/wiki/Datos_enlazados

<section>
## El problema del tiempo

Acercamientos con Linked Data han tenido un gran éxito en crear herramientas para descubrir y visualizar datos codificados geográficamente. Los índices de topónimos les han permitido a los investigadores y científicos informáticos que manejan metadatos apuntar a identificadores de lugares en común. Así, aunque una base de datos llame a un sitio “Atenas” y otro “Atina,” alguien que busque información sobre ese sitio puede encontrarla en ambas bases de datos con una sola búsqueda (cf. [Pelagios Project][pel]). También facilitan el uso de herramientas automáticas para adjuntar coordenadas a nombres de lugares. Pero para las disciplinas históricas, otro eje fundamental de investigación se ha resistido más a estas herramientas: el tiempo. Los estudios sobre el mundo antiguo, en particular, utilizan lenguaje conceptual en vez de cuantitativo para referirse al tiempo. En vez de apuntar a fechas, se refieren a períodos – sin embargo, diferentes estudiosos pueden emplear el mismo término para referirse a cosas inmensamente diferentes. Además, los conceptos de períodos están enredados con el espacio: son diferentes de lugar a lugar y de estudioso a estudioso. Estos factores hacen prácticamente imposible la creación de un índice de conceptos de períodos que sea temporalmente específico y globalmente citable. Pero sin un punto de referencia en común, a los estudiosos se les dificulta encontrar información sobre el mismo período de tiempo en diferentes bases de datos; es difícil que herramientas automáticas extraigan y agreguen información temporal de textos y bases de datos para su visualización y análisis; y tanto a los estudiantes como al público se les dificulta entender los matices cronológicos de interpretaciones históricas. Recientemente se ha apuntado a la necesidad de un punto de referencia para períodos que sea flexible y robusto [@Berman2011; @Elliott2013; @Grossner2013], pero dicho recurso no ha emergido. 

</section>

<section>
## Un índice de definiciones de períodos

El proyecto PeriodO propone una solución a este problema con la creación de un índice que documente definiciones de períodos por fuentes de autoridad, en vez de conceptos de período aceptados globalmente. El índice permite integrar períodos históricos y arqueológicos al ecosistema de Linked Data más efectivamente.  Ha sido bastante dificil modelar períodos como Linked Data, ya que no hay un término medio entre definiciones provenientes de tesauros generales existentes y vocabularios controlados y los muy específicos atributos espaciales y cronológicos asociados con el uso de períodos en bases de datos y publicaciones individuales. Tesauros de períodos generales no concuerdan con las definiciones de períodos utilizadas por muchos investigadores, proyectos o instituciones individuales. Por otro lado, antes de PeriodO no había ninguna manera de reconciliar los vocabularios específicos utilizados en bases de datos individuales para permitir una búsqueda que incluyera todos los conjuntos de datos y produjera todas las entradas asociadas con un rango de fechas de interés o con el mismo concepto general de período. 

El índice de definiciones PeriodO proporciona un punto intermedio entre vocabularios de períodos generales y específicos. Las definiciones in el índice están modeladas de una forma que corresponde a la práctica académica tradicional, la cual varía significativamente del uso de vocabularios controlados que favorecen los archivos y las bibliotecas. Estudios cuidadosos por lo general califican el uso de un término de período como "la era de hierro temprana" ya sea con una definición espacio-temporal ("o sea, el período entre aproximadamente 1100 y 750 aC en el área Egea") o con una referencia a un estudio previo ("como lo define Mazarakis Ainian [1997]"). Una definición de período, entonces, consiste de una declaración hecha por una fuente autoritaria, impresa o en línea, que asocial el nombre de un período o término ("Arcáico") con coordenadas cronológicas de mayor o menor precisión ("700-480 aC", "siglo ocho tardío a siglo cinco temprano aC) y con límites geográficos particulares, ya sea modernos ("Grecia", "Turquía", "Sicilia", etc) o sitios antiguos o modernos ("Atenas").

</section>

<section>
## Colaboradores

Nuestros copartícipes y contribuidores de datos incluyen a: [British Museum][bri], el [Instituto Arqueológico Alemán (German Archaeological Institute)][gai], [Archaeology Data Service][ads] (RU), [English Heritage][eng], la [Hypermedia Research Unit][hru] de la Universidad del Sur de Gales, el índice espacial [Pleiades][pel], el proyecto [Pelagios][pel], [Fasti Online][fas], el proyecto [ArcheoInf][arc], el proyecto [CLAROS][cla] de la Universidad de Oxford, la [Encyclopedia of Egyptology][uee] de la Universidad de California en Los Ángeles, y el [Levantine Ceramics Project][lcp].

[adm]: http://www.utexas.edu/cola/depts/classics/faculty/atr253
[ryn]: http://aeshin.org/
[erc]: https://twitter.com/ekansa
[ctx]: http://opencontext.org/
[bri]: https://www.britishmuseum.org/
[gai]: http://www.dainst.org/
[ads]: http://archaeologydataservice.ac.uk/
[eng]: http://www.english-heritage.org.uk/
[hru]: http://hypermedia.research.southwales.ac.uk/
[ple]: http://pleiades.stoa.org/
[pel]: http://commons.pelagios.org/about/
[fas]: http://www.fastionline.org/
[arc]: http://www.ub.tu-dortmund.de/archeoinf/
[cla]: http://www.clarosnet.org/
[uee]: http://www.uee.ucla.edu/
[lcp]: http://www.levantineceramics.org/

</section>

<section>
## Referencias
</section>
