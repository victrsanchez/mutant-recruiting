import { Body, Controller, Get, HttpCode, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { HumanDto } from './dto/human.dto';
import { StatsDto } from './dto/stats.dto';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  async hello(){
    return 'hello';
  }

  @Post('/mutant')
  @HttpCode(200)
  async storeDNA(@Body() humanDto: HumanDto): Promise<string> {
    return this.appService.storeDNA(humanDto);
  }

  @Get('/stats')
  async getStats() : Promise<StatsDto> {
    return await this.appService.stats();
  }
}
