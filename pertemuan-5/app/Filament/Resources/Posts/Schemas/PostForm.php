<?php

namespace App\Filament\Resources\Posts\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\ColorPicker;
use Filament\Forms\Components\MarkdownEditor;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Checkbox;
use Filament\Forms\Components\DatePicker;
use Filament\Schemas\Components\Group;
use Filament\Schemas\Components\Section;

class PostForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Group::make()->schema([
                    Section::make('Main Content')
                        ->icon('heroicon-o-document-text')
                        ->schema([
                            TextInput::make('title')
                                ->required()
                                ->minLength(5)
                                ->validationMessages([
                                    'required' => 'Title wajib diisi',
                                    'min' => 'Title minimal 5 karakter',
                                ]),
                            TextInput::make('slug')
                                ->required()
                                ->minLength(3)
                                ->unique(ignoreRecord: true)
                                ->validationMessages([
                                    'required' => 'Slug wajib diisi',
                                    'min' => 'Slug minimal 3 karakter',
                                    'unique' => 'Slug sudah digunakan',
                                ]),
                            MarkdownEditor::make('body')->columnSpanFull(),
                        ])->columns(2),

                    Section::make('Media')
                        ->icon('heroicon-o-photo')
                        ->schema([
                            FileUpload::make('image')
                                ->disk('public')
                                ->directory('post')
                                ->required()
                                ->validationMessages([
                                    'required' => 'Gambar wajib diupload',
                                ]),
                        ])
                ])->columnSpan(2),

                Group::make()->schema([
                    Section::make('Meta')
                        ->icon('heroicon-o-tag')
                        ->schema([
                            Select::make('category_id')
                                ->label('Category')
                                ->relationship('category', 'name')
                                ->searchable()
                                ->preload()
                                ->required(),
                            ColorPicker::make('color'),
                            Select::make('tags')
                                ->relationship('tags', 'name')
                                ->multiple()
                                ->preload(),
                            Checkbox::make('published'),
                            DatePicker::make('published_at'),
                        ])
                ])->columnSpan(1),
            ])->columns(3);
    }
}
