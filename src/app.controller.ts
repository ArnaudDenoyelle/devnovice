import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get("/")
  getHello() {
    return this.exemple1();
  }

  @Get("/1")
  exemple1() {
    return this.appService.exemple1();
  }

  @Get("/2")
  exemple2() {
    return this.appService.exemple2();
  }

  @Get("/3")
  exemple3() {
    return this.appService.exemple3();
  }

  @Get("/4")
  exemple4() {
    return this.appService.exemple4();
  }
}
