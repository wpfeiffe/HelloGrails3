package helloworld3

import grails.rest.Resource

@Resource(uri='/offices', formats=['html', 'json', 'xml'])
class Office
{
    String officeName;
    String locationCity;
    static constraints = {
        officeName(size:2..40, blank:false)
        locationCity(size:2..50, blank:false)
    }
}
