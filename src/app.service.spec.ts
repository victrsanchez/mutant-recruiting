import { Test } from '@nestjs/testing';
import { AppService } from './app.service';
import { Dna } from './entities/dna.entity';

const mockDnaRepository = () => ({

});

describe('AppService', () => {
  /*let appService: AppService;

  beforeEach(async () => {
    const module = await Test.createTestingModule({
      providers: [AppService, { provide: Dna, useFactory: mockDnaRepository }],
    }).compile();

    appService = module.get(AppService);
    
  });*/
});
