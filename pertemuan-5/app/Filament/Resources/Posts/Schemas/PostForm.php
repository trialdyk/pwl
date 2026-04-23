<?php

namespace App\Filament\Resources\Posts\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\ColorPicker;
use Filament\Forms\Components\MarkdownEditor;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TagsInput;
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
                            TextInput::make('title')->required()->minLength(5),
                            TextInput::make('slug')->required()->unique(ignoreRecord: true),
                            MarkdownEditor::make('body')->columnSpanFull(),
                        ])->columns(2),

                    Section::make('Media')
                        ->icon('heroicon-o-photo')
                        ->schema([
                            FileUpload::make('image')
                                ->disk('public')
                                ->directory('post'),
                        ])
                ])->columnSpan(2),

                Group::make()->schema([
                    Section::make('Meta')
                        ->icon('heroicon-o-tag')
                        ->schema([
                            Select::make('category_id')
                                ->label('Category')
                                ->options(
                                    \App\Models\Category::all()->pluck('name', 'id')
                                )
                                ->required(),
                            ColorPicker::make('color'),
                            TagsInput::make('tags'),
                            Checkbox::make('published'),
                            DatePicker::make('published_at'),
                        ])
                ])->columnSpan(1),
            ])->columns(3);
    }
}
