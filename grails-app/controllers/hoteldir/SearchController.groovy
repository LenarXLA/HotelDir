package hoteldir

class SearchController {

    CountryService countryService
    HotelService hotelService

    def index() { }

    def show() {
        // введенная строка поиска
        String txtHotel = params.txtHotel
        // выбранная страна
        String searchCountry = params.countryTitle

        List<Hotel> findedHotels =  hotelService.findAllByTitleIlike("%" + txtHotel + "%")
                                                .findAll{ it.country.title == searchCountry}

        if (findedHotels.size() == 0) {
            redirect(action: "notFound")
            return
        }

        // двойная сортировка, звездность в обратном порядке
        findedHotels.sort { h1, h2 -> -h1.stars <=> -h2.stars ?: h1.title <=> h2.title }
        respond findedHotels, model:[hotelCount: findedHotels.size()]
    }

    def notFound() { }

}
