.class public Lcom/google/android/apps/nexuslauncher/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Gt:[I

.field private Gu:Landroid/graphics/Bitmap;

.field private Gv:Landroid/graphics/Canvas;

.field private Gw:Landroid/graphics/Paint;

.field private final Gx:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gx:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Bitmap;)Z
    .locals 13

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 46
    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-gt v0, v3, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    move-object v5, p1

    move v12, v0

    move v11, v1

    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gu:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 48
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gu:Landroid/graphics/Bitmap;

    .line 51
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gu:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gv:Landroid/graphics/Canvas;

    .line 52
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gw:Landroid/graphics/Paint;

    .line 53
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gw:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 55
    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gx:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 56
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gx:Landroid/graphics/Matrix;

    int-to-float v1, v1

    const/high16 v6, 0x42800000    # 64.0f

    div-float v1, v6, v1

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gv:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gv:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gw:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 62
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gu:Landroid/graphics/Bitmap;

    .line 63
    nop

    .line 66
    move-object v5, p1

    move v11, v3

    move v12, v11

    :goto_1
    mul-int p1, v12, v11

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gt:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gt:[I

    array-length v0, v0

    if-ge v0, p1, :cond_4

    :cond_3
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gt:[I

    .line 68
    :cond_4
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gt:[I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 69
    move v0, v2

    :goto_2
    if-ge v0, p1, :cond_8

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e/c;->Gt:[I

    aget v1, v1, v0

    shr-int/lit8 v3, v1, 0x18

    const/16 v5, 0xff

    and-int/2addr v3, v5

    const/16 v6, 0x32

    if-ge v3, v6, :cond_5

    :goto_3
    move v1, v4

    goto :goto_4

    :cond_5
    shr-int/lit8 v3, v1, 0x10

    and-int/2addr v3, v5

    shr-int/lit8 v6, v1, 0x8

    and-int/2addr v6, v5

    and-int/2addr v1, v5

    sub-int v5, v3, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v7, 0x14

    if-ge v5, v7, :cond_6

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v7, :cond_6

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v7, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_4
    if-nez v1, :cond_7

    .line 71
    return v2

    .line 69
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    :cond_8
    return v4
.end method
