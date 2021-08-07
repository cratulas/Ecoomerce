1. El diagrama se encuentra en /ecommerce/erd.pdf el cual fue generado a traves de la gema ERD (Se podria mejorar agregando la tabla categories_products la cual no posee modelo por lo que la gema no nos genera esa relacion)
2. Listo
3. Listo
4. La solucion al problema de las categorias es la utilizacion de la gema ancestry la cual nos      permite generar padres e hijos en un mismo modelo guardando la salvedad de no darle dos padres a uno y generando una estructura de arbol puediendo acceder a todos sus ancestros y descendientes (Solo faltaria implementarlo en front-end , la solucion seria guardar el id del padre al momento de generar una categoria)
5. Los scopes son los siguientes

    Model Category
        scope :childs_for_me, -> (childs){ where('user_id IN (?)', childs) }
        scope :parents_for_me, -> (parents){ where('user_id IN (?)', childs) }

    Controller Categories
    def show
        @categoriesChilds = Category.childs_for_me(category.child_ids)
        @categoriesParents = Category.parents_for_me(category.ancestor_ids)

    end

    Aprovechando las caracteristica de la gema ancestry , utilizamos child_ids y ancestor_ids lo que nos entrega un arreglo con los ancestros o sus descendientes segun corresponda , esta informacion la damos de parametro en el Scope y con esto obtenemos lo que necesitamos (Solo faltaria implementarlo en el Front-end)

6. Cada producto posee una coleccion de variaciones que se pueden ser 0 o muchas, cada variacion posee su propio color, talla y stock independiente, hay que recorrer cada variacion en caso de que la principal tenga stock mostrar esta en el catalogo, si esta no posee stock y alguna de las variacione SI posea mostrar alguna de estas de forma aleatoria, si ni la principal ni las variaciones poseen stock no mostrar la tarjeta del producto

7. No hay

8.  rails g model offer title:string user:references
    rails g model coupon offer:references code:uuid