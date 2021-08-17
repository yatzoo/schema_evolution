context csm.evolution {

@cds.persistence.journal
Entity ![STATIONS] {
key ![UUID]: String(55)  @title: 'UUID' ; 
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
key ![DATE]: Timestamp  @title: 'DATE' ; 
key ![STATION_UUID]: String(55)  @title: 'STATION_UUID' ; 
    ![DIESEL]: Double  @title: 'DIESEL' ; 
    ![E5]: Double  @title: 'E5' ; 
    ![E10]: Double  @title: 'E10' ; 
    ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE' ; 
    ![E5CHANGE]: Integer  @title: 'E5CHANGE' ; 
    ![E10CHANGE]: Integer  @title: 'E10CHANGE' ; 
};

Entity ![STATIONS_TAB] {
key ![UUID]: String(55)  @title: 'UUID' ; 
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
key ![DATE]: Timestamp  @title: 'DATE' ; 
key ![STATION_UUID]: String(55)  @title: 'STATION_UUID' ; 
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
Entity ![Prices_Stations] {
key     ![UUID]: String(55)  @title: 'UUID: UUID' ; 
key     ![NAME]: String(1000)  @title: 'NAME: NAME' ; 
key     ![BRAND]: String(1000)  @title: 'BRAND: BRAND' ; 
key     ![CITY]: String(34)  @title: 'CITY: CITY' ; 
key     ![DATE]: Timestamp  @title: 'DATE: DATE' ; 
key     ![DIESEL]: Double  @title: 'DIESEL: DIESEL' ; 
key     ![E5]: Double  @title: 'E5: E5' ; 
key     ![E10]: Double  @title: 'E10: E10' ;
}

@cds.persistence.exists 
@cds.persistence.calcview
Entity ![Prices_Stations_TAB] {
key     ![UUID]: String(55)  @title: 'UUID: UUID' ; 
key     ![NAME]: String(1000)  @title: 'NAME: NAME' ; 
key     ![BRAND]: String(1000)  @title: 'BRAND: BRAND' ; 
key     ![CITY]: String(34)  @title: 'CITY: CITY' ; 
key     ![DATE]: Timestamp  @title: 'DATE: DATE' ; 
key     ![DIESEL]: Double  @title: 'DIESEL: DIESEL' ; 
key     ![E5]: Double  @title: 'E5: E5' ; 
key     ![E10]: Double  @title: 'E10: E10' ; 
}