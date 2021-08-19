context csm.evolution {
    type UUID : String(50); // UUID used as join column for PRICES and STATIONS tables

    @cds.persistence.journal
    Entity ![STATIONS] {
    key ![UUID]: UUID  @title: 'UUID' ; 
        ![NAME]: String(1000)  @title: 'NAME' ; 
        ![BRAND]: String(1000)  @title: 'BRAND' ; 
        ![CITY]: String(34)  @title: 'CITY' ; 
    };

    @cds.persistence.journal
    Entity ![PRICES] {
    key ![DATE_TIME]: Timestamp  @title: 'DATE_TIME' ; 
    key ![STATION_UUID]: UUID  @title: 'STATION_UUID' ; 
        ![DIESEL]: Double  @title: 'DIESEL' ; 
        ![E5]: Double  @title: 'E5' ; 
        ![E10]: Double  @title: 'E10' ; 
    };

    Entity ![STATIONS_TAB] {
    key ![UUID]: UUID  @title: 'UUID' ; 
        ![NAME]: String(1000)  @title: 'NAME' ; 
        ![BRAND]: String(1000)  @title: 'BRAND' ; 
        ![CITY]: String(34)  @title: 'CITY' ; 
    };

    Entity ![PRICES_TAB] {
    key ![DATE_TIME]: Timestamp  @title: 'DATE_TIME' ; 
    key ![STATION_UUID]: UUID  @title: 'STATION_UUID' ; 
        ![DIESEL]: Double  @title: 'DIESEL' ; 
        ![E5]: Double  @title: 'E5' ; 
        ![E10]: Double  @title: 'E10' ; 
    };
}

