SET ROLE hugo;

CREATE TYPE Category AS ENUM ('Novel', 'Novella', 'Novelette', 'ShortStory', 'RelatedWork',
    'GraphicStory', 'DramaticLong', 'DramaticShort', 'EditorLong', 'EditorShort', 'ProArtist',
    'Semiprozine', 'Fanzine', 'Fancast', 'FanWriter', 'FanArtist', 'Series', 'NewWriter',
    'BestArtBook', 'BestVideoGame', 'Lodestar',
    'RetroNovel', 'RetroNovella', 'RetroNovelette', 'RetroShortStory', 'RetroRelatedWork', 'RetroGraphicStory',
    'RetroDramaticLong', 'RetroDramaticShort', 'RetroEditorLong', 'RetroEditorShort', 'RetroProArtist', 'RetroSemiprozine',
    'RetroFanzine', 'RetroFancast', 'RetroFanWriter', 'RetroFanArtist', 'RetroSeries', 
    'RetroBestArtBook');

    
CREATE TYPE Competition AS ENUM ('Hugos', 'Retro Hugos');

