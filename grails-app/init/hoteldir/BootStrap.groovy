package hoteldir

class BootStrap {

    def init = { servletContext ->
        Country fr = new Country(title: 'Франция', capital: 'Париж')
        Country it = new Country(title: 'Италия', capital: 'Рим')
        Country jap = new Country(title: 'Япония', capital: 'Токио')
        fr.save()
        it.save()
        jap.save()

        new Hotel(title: 'Pullman Paris Tour Eiffel', country: fr, stars: 3).save()
        new Hotel(title: 'Malte - Astotel', country: fr, stars: 5, site: 'https://ru.astotel.com/').save()
        new Hotel(title: 'La Maison Favart', country: fr, stars: 4, site: 'https://www.lamaisonfavart.com/the-hotel/').save()
        new Hotel(title: 'Moresco', country: it, stars: 5, site: 'https://hotelmorescovenice.com/').save()
        new Hotel(title: 'Dharma Boutique Hotel & Spa', country: it, stars: 2).save()
        new Hotel(title: 'Turin Palace Hotel', country: it, stars: 5, site: 'https://www.turinpalacehotel.com/en/hotel-turin/1-0.html').save()
        new Hotel(title: 'Hotel Calimala', country: it, stars: 5).save()
        new Hotel(title: 'Hotel David', country: it, stars: 3, site: 'https://www.hoteldavid.com/').save()
        new Hotel(title: 'The Capitol Hotel Tokyu', country: jap, stars: 5).save()
        new Hotel(title: 'Asakusa Vista Hotel', country: jap, stars: 4, site: 'https://www.viewhotels.jp/asakusa/').save()
        new Hotel(title: 'New Otani Osaka', country: jap, stars: 4).save()
    }
    def destroy = {
    }
}
