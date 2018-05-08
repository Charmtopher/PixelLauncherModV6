.class public Lcom/android/launcher3/graphics/BitmapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:I

.field public icon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 2

    .line 38
    new-instance v0, Lcom/android/launcher3/graphics/BitmapInfo;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/BitmapInfo;-><init>()V

    .line 39
    iput-object p0, v0, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 40
    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/android/launcher3/graphics/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public final applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 29
    iget v0, p0, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    iput v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    .line 30
    return-void
.end method

.method public final applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 34
    iget v0, p0, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    iput v0, p1, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    .line 35
    return-void
.end method
