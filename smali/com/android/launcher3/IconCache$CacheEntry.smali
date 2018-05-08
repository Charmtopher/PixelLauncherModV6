.class public Lcom/android/launcher3/IconCache$CacheEntry;
.super Lcom/android/launcher3/graphics/BitmapInfo;
.source "SourceFile"


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public isLowResIcon:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapInfo;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method
