package hoteldir

class Hotel {
    String title
    Country country
    static belongsTo = Country
    Integer stars
    String site

    static constraints = {
        title(nullable: false, blank: false, unique: 'country', size: 1..255)
        country(nullable: false, blank: false)
        stars(nullable: false, blank: false, min: 1, max: 5)
        site(nullable: true, blank: true, url: true)
    }

    String toString() {
        return title
    }
}
