context csm.evolution {
    type UUID : String(50);

    @cds.persistence.journal
    Entity ![STATIONS] {
    key ![UUID]: UUID  @title: 'UUID' ; 
        ![NAME]: String(1000)  @title: 'NAME' ; 
        ![BRAND]: String(1000)  @title: 'BRAND' ; 
        ![STREET]: String(500)  @title: 'STREET' ; 
        ![HOUSE_NUMBER]: String(20)  @title: 'HOUSE_NUMBER' ; 
        ![POST_CODE]: String(10)  @title: 'POST_CODE' ; 
        ![CITY]: String(34)  @title: 'CITY' ; 
        ![LATITUDE]: Double  @title: 'LATITUDE' ; 
        ![LONGITUDE]: Double  @title: 'LONGITUDE' ; 
    };

    @cds.persistence.journal
    Entity ![PRICES] {
    key ![DATE_TIME]: Timestamp  @title: 'DATE_TIME' ; 
    key ![STATION_UUID]: UUID  @title: 'STATION_UUID' ; 
        ![DIESEL]: Double  @title: 'DIESEL' ; 
        ![E5]: Double  @title: 'E5' ; 
        ![E10]: Double  @title: 'E10' ; 
        ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE' ; 
        ![E5CHANGE]: Integer  @title: 'E5CHANGE' ; 
        ![E10CHANGE]: Integer  @title: 'E10CHANGE' ; 
    };

    Entity ![STATIONS_TAB] {
    key ![UUID]: UUID  @title: 'UUID' ; 
        ![NAME]: String(1000)  @title: 'NAME' ; 
        ![BRAND]: String(1000)  @title: 'BRAND' ; 
        ![STREET]: String(500)  @title: 'STREET' ; 
        ![HOUSE_NUMBER]: String(20)  @title: 'HOUSE_NUMBER' ; 
        ![POST_CODE]: String(10)  @title: 'POST_CODE' ; 
        ![CITY]: String(34)  @title: 'CITY' ; 
        ![LATITUDE]: Double  @title: 'LATITUDE' ; 
        ![LONGITUDE]: Double  @title: 'LONGITUDE' ; 
    };

    Entity ![PRICES_TAB] {
    key ![DATE_TIME]: Timestamp  @title: 'DATE_TIME' ; 
    key ![STATION_UUID]: UUID  @title: 'STATION_UUID' ; 
        ![DIESEL]: Double  @title: 'DIESEL' ; 
        ![E5]: Double  @title: 'E5' ; 
        ![E10]: Double  @title: 'E10' ; 
        ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE' ; 
        ![E5CHANGE]: Integer  @title: 'E5CHANGE' ; 
        ![E10CHANGE]: Integer  @title: 'E10CHANGE' ; 
    };
}

@cds.persistence.exists 
@cds.persistence.calcview
Entity ![CSM_EVOLUTION_CV] {
key     ![DATE_TIME]: Timestamp  @title: 'DATE_TIME: DATE_TIME' ; 
key     ![STATION_UUID]: UUID  @title: 'STATION_UUID: STATION_UUID' ; 
key     ![DIESEL]: Double  @title: 'DIESEL: DIESEL' ; 
key     ![E5]: Double  @title: 'E5: E5' ; 
key     ![E10]: Double  @title: 'E10: E10' ; 
key     ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE: DIESELCHANGE' ; 
key     ![E5CHANGE]: Integer  @title: 'E5CHANGE: E5CHANGE' ; 
key     ![E10CHANGE]: Integer  @title: 'E10CHANGE: E10CHANGE' ; 
key     ![NAME]: String(1000)  @title: 'NAME: NAME' ; 
key     ![BRAND]: String(1000)  @title: 'BRAND: BRAND' ; 
key     ![STREET]: String(500)  @title: 'STREET: STREET' ; 
key     ![HOUSE_NUMBER]: String(20)  @title: 'HOUSE_NUMBER: HOUSE_NUMBER' ; 
key     ![POST_CODE]: String(10)  @title: 'POST_CODE: POST_CODE' ; 
key     ![CITY]: String(34)  @title: 'CITY: CITY' ; 
key     ![LATITUDE]: Double  @title: 'LATITUDE: LATITUDE' ; 
key     ![LONGITUDE]: Double  @title: 'LONGITUDE: LONGITUDE' ; 
}

@cds.persistence.exists 
@cds.persistence.calcview
Entity ![CSM_EVOLUTION_CV_TAB] {
key     ![DATE_TIME]: Timestamp  @title: 'DATE_TIME: DATE_TIME' ; 
key     ![STATION_UUID]: UUID  @title: 'STATION_UUID: STATION_UUID' ; 
key     ![DIESEL]: Double  @title: 'DIESEL: DIESEL' ; 
key     ![E5]: Double  @title: 'E5: E5' ; 
key     ![E10]: Double  @title: 'E10: E10' ; 
key     ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE: DIESELCHANGE' ; 
key     ![E5CHANGE]: Integer  @title: 'E5CHANGE: E5CHANGE' ; 
key     ![E10CHANGE]: Integer  @title: 'E10CHANGE: E10CHANGE' ; 
key     ![NAME]: String(1000)  @title: 'NAME: NAME' ; 
key     ![BRAND]: String(1000)  @title: 'BRAND: BRAND' ; 
key     ![STREET]: String(500)  @title: 'STREET: STREET' ; 
key     ![HOUSE_NUMBER]: String(20)  @title: 'HOUSE_NUMBER: HOUSE_NUMBER' ; 
key     ![POST_CODE]: String(10)  @title: 'POST_CODE: POST_CODE' ; 
key     ![CITY]: String(34)  @title: 'CITY: CITY' ; 
key     ![LATITUDE]: Double  @title: 'LATITUDE: LATITUDE' ; 
key     ![LONGITUDE]: Double  @title: 'LONGITUDE: LONGITUDE' ; 
}