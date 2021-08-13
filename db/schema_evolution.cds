namespace csm.evolution;

@cds.persistence.journal
Entity ![STATIONS] {
key ![UUID]: String(50)  @title: 'UUID' ; 
    ![NAME]: String(1000)  @title: 'NAME' ; 
    ![BRAND]: String(1000)  @title: 'BRAND' ; 
    ![STREET]: String(500)  @title: 'STREET' ; 
    ![HOUSE_NUMBER]: String(20)  @title: 'HOUSE_NUMBER' ; 
    ![POST_CODE]: String(10)  @title: 'POST_CODE' ; 
    ![CITY]: String(34)  @title: 'CITY' ; 
    ![LATITUDE]: Double  @title: 'LATITUDE' ; 
    ![LONGITUDE]: Double  @title: 'LONGITUDE' ; 
};

Entity ![PRICES] {
key ![DATE]: Timestamp  @title: 'DATE' ; 
key ![STATION_UUID]: String(50)  @title: 'STATION_UUID' ; 
    ![DIESEL]: Double  @title: 'DIESEL' ; 
    ![E5]: Double  @title: 'E5' ; 
    ![E10]: Double  @title: 'E10' ; 
    ![DIESELCHANGE]: Integer  @title: 'DIESELCHANGE' ; 
    ![E5CHANGE]: Integer  @title: 'E5CHANGE' ; 
    ![E10CHANGE]: Integer  @title: 'E10CHANGE' ; 
};