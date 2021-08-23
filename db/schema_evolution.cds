context csm.evolution {
    // Change#001: New field length
    type UUID : String(51);
    // Change#001: Previous definition:
    // type UUID : String(50);


    @cds.persistence.journal
    Entity ![STATIONS] {
    key ![STATION_UUID]: UUID  @title: 'UUID' ; // Change#002: UUID renamed to STATION_UUID
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
    key ![STATION_UUID]: UUID  @title: 'UUID' ;
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

