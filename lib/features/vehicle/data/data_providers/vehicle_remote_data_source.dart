import '../models/vehicle_model.dart';

abstract class VehicleRemoteDataSource {
  Future<List<VehicleModel>> getVehicles();
}

class VehicleRemoteDataSourceImpl implements VehicleRemoteDataSource {
  @override
  Future<List<VehicleModel>> getVehicles() async {
    // Simulate network request with fake data
    await Future.delayed(Duration(seconds: 1)); // Simulate network latency

    return [
      VehicleModel(
          id: "1",
          name: "Tesla Model S",
          imageUrl:
              "https://www.google.com/imgres?q=tesla&imgurl=https%3A%2F%2Fservice.tesla.com%2Fdocs%2FPublic%2Fdiy%2Fimages%2FGUID-B5641257-9E85-404B-9667-4DA5FDF6D2E7-online-en-US.png&imgrefurl=https%3A%2F%2Fservice.tesla.com%2Fdocs%2FPublic%2Fdiy%2Fmodel3%2Fnl_nl%2F&docid=COnJcWej3b16hM&tbnid=7QX9svCUfA-dLM&vet=12ahUKEwjNzPae_PmHAxWa9bsIHZ7gOx0QM3oFCIEBEAA..i&w=1500&h=818&hcb=2&ved=2ahUKEwjNzPae_PmHAxWa9bsIHZ7gOx0QM3oFCIEBEAA"),
      VehicleModel(
          id: "2",
          name: "BMW M3",
          imageUrl:
              "https://www.google.com/imgres?q=bmw&imgurl=https%3A%2F%2Fwww.bmw.nl%2Fcontent%2Fdam%2Fbmw%2Fcommon%2Fall-models%2Fm-series%2Fseries-overview%2Fbmw-m-series-seo-overview-ms-04.jpg&imgrefurl=https%3A%2F%2Fwww.bmw.nl%2Fnl%2Fmodellen%2Fm-serie.html&docid=9A4gg_ijRS5oAM&tbnid=yC0MDV_sVtzMEM&vet=12ahUKEwixssyl-_mHAxUw9LsIHd_LNC0QM3oECBcQAA..i&w=890&h=501&hcb=2&ved=2ahUKEwixssyl-_mHAxUw9LsIHd_LNC0QM3oECBcQAA"),
      VehicleModel(
          id: "3",
          name: "Audi A4",
          imageUrl:
              "https://www.google.com/imgres?q=audi&imgurl=https%3A%2F%2Fuploads.audi-mediacenter.com%2Fsystem%2Fproduction%2Fcar_families%2F84%2Fphotos%2F451d91edddcd5fd7905e60bc139ef916b4a13e7f%2Fweb_1440_Q6_e-tron.png%3F1710785494&imgrefurl=https%3A%2F%2Fwww.audi-mediacenter.com%2Fen%2Fmodels-4&docid=Ja1n_RrCQFIZwM&tbnid=Enypj0YPZS6Z0M&vet=12ahUKEwiT3ve3-_mHAxWP_rsIHcUABMIQM3oECBgQAA..i&w=1440&h=720&hcb=2&itg=1&ved=2ahUKEwiT3ve3-_mHAxWP_rsIHcUABMIQM3oECBgQAA"),
      VehicleModel(
          id: "4",
          name: "Mercedes C-Class",
          imageUrl:
              "https://www.google.com/imgres?q=Mercedes%20C-Class&imgurl=https%3A%2F%2Fwww.autocar.co.uk%2Fsites%2Fautocar.co.uk%2Ffiles%2Fmercedes-c-class_0.jpg&imgrefurl=https%3A%2F%2Fwww.autocar.co.uk%2Fcar-review%2Fmercedes-benz%2Fc-class&docid=DD3hzUWxGD2xfM&tbnid=xIQzgIkfhk75VM&vet=12ahUKEwj-_tDH_PmHAxX1hP0HHfMjBiEQM3oECGQQAA..i&w=1600&h=1067&hcb=2&ved=2ahUKEwj-_tDH_PmHAxX1hP0HHfMjBiEQM3oECGQQAA"),
      VehicleModel(
          id: "5",
          name: "Ford Mustang",
          imageUrl:
              "https://www.google.com/imgres?q=Mustang&imgurl=https%3A%2F%2Fwww.autoscout24.nl%2Fcms-content-assets%2F4Mze9Op7QuycS82P8ZyeCU-16c1508a27c0b7019328659e6116a75a-ford-mustang-l-01-1100.jpg&imgrefurl=https%3A%2F%2Fwww.autoscout24.nl%2Fauto%2Fford%2Fford-mustang%2F&docid=ZAIvvbc3o3Ve_M&tbnid=0tHZAWtKP4teEM&vet=12ahUKEwi8qOfO_PmHAxVyh_0HHTs1KAMQM3oECBsQAA..i&w=1100&h=430&hcb=2&ved=2ahUKEwi8qOfO_PmHAxVyh_0HHTs1KAMQM3oECBsQAA"),
      VehicleModel(
          id: "6",
          name: "Chevrolet Camaro",
          imageUrl:
              "https://www.google.com/imgres?q=Chevrolet%20Camaro&imgurl=https%3A%2F%2Fi.guim.co.uk%2Fimg%2Fstatic%2Fsys-images%2FObserver%2FPix%2Fpictures%2F2013%2F3%2F5%2F1362500388412%2FCamaro-008.jpg%3Fwidth%3D465%26dpr%3D1%26s%3Dnone&imgrefurl=https%3A%2F%2Fwww.theguardian.com%2Ftechnology%2F2013%2Fmar%2F10%2Fchevrolet-camaro-car-review&docid=EQ-WgWYJ1G806M&tbnid=RGMlN3tJ6vnx5M&vet=12ahUKEwj996rY_PmHAxUWnf0HHWMxI5gQM3oECEkQAA..i&w=460&h=276&hcb=2&ved=2ahUKEwj996rY_PmHAxUWnf0HHWMxI5gQM3oECEkQAA"),
      VehicleModel(
          id: "7",
          name: "Nissan GT-R",
          imageUrl:
              "https://www.google.com/imgres?q=Nissan%20GT-R&imgurl=https%3A%2F%2Fcdn.motor1.com%2Fimages%2Fmgl%2FBbg6A%2Fs1%2F2018-nissan-gt-r-nismo-gt3.webp&imgrefurl=https%3A%2F%2Fwww.motor1.com%2Fnews%2F243677%2F2018-nissan-gtr-nismo-gt3%2F&docid=LjuVStxdlw7xIM&tbnid=uc91vtjpBaIQOM&vet=12ahUKEwion8vi_PmHAxU1gP0HHZrWCcUQM3oECEgQAA..i&w=1920&h=1080&hcb=2&ved=2ahUKEwion8vi_PmHAxU1gP0HHZrWCcUQM3oECEgQAA"),
      VehicleModel(
          id: "8",
          name: "Porsche 911",
          imageUrl:
              "https://www.google.com/imgres?q=porsche&imgurl=https%3A%2F%2Ffiles.porsche.com%2Ffilestore%2Fimage%2Fmultimedia%2Fnone%2Fhomepage-teaser-icc-718%2Fnormal%2Fdb4be0ec-f8f4-11eb-80db-005056bbdc38%3BsP%3Btwebp%2Fporsche-normal.webp&imgrefurl=https%3A%2F%2Fwww.porsche.com%2Fbelgium%2Fnl%2F&docid=aQ-gkEjzo0MjLM&tbnid=_RfEoIWUKNOV8M&vet=12ahUKEwjM5dXx-_mHAxU_hf0HHbbXJaQQM3oECBcQAA..i&w=480&h=270&hcb=2&ved=2ahUKEwjM5dXx-_mHAxU_hf0HHbbXJaQQM3oECBcQAA"),
      // Add more vehicles as needed
    ];
  }
}
