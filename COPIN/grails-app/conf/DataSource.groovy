dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = "copinsid"
    //username = "jumla_dsc"
    //password = "J00ml4D5Cu5eR"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/copin"
            //url = "jdbc:mysql://localhost:3306/jumla_dsc"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
        }
    }
}
