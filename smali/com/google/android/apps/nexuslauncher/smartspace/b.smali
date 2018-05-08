.class public Lcom/google/android/apps/nexuslauncher/smartspace/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Fd:J

.field private final Fe:J

.field private final Ff:I

.field private final Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

.field private final Fh:Z

.field final Fi:Z

.field private final mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/Bitmap;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a/d;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJJI)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    .line 56
    iput-boolean p4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fh:Z

    .line 57
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIntent:Landroid/content/Intent;

    .line 58
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    .line 59
    iput-wide p7, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fd:J

    .line 60
    iput-wide p9, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fe:J

    .line 61
    iput p11, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Ff:I

    .line 62
    iput-boolean p6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fi:Z

    .line 63
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a/b;Z)Lcom/google/android/apps/nexuslauncher/smartspace/b;
    .locals 16

    move-object/from16 v0, p1

    .line 304
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    return-object v1

    .line 308
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 309
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->ED:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 310
    move-object v7, v2

    goto :goto_0

    .line 309
    :cond_1
    nop

    .line 310
    move-object v7, v1

    :goto_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    array-length v4, v4

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 312
    move-object v9, v2

    goto :goto_1

    .line 311
    :cond_2
    nop

    .line 312
    move-object v9, v1

    :goto_1
    if-eqz v9, :cond_4

    if-nez p2, :cond_3

    iget-boolean v3, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    if-eqz v3, :cond_3

    .line 313
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    if-nez v3, :cond_4

    .line 314
    :cond_3
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 315
    new-instance v10, Landroid/graphics/BlurMaskFilter;

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v10, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 317
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 318
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 317
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 319
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v4

    .line 320
    invoke-virtual {v4}, Lcom/android/launcher3/graphics/LauncherIcons;->getShadowGenerator()Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v8

    const/16 v11, 0x14

    const/16 v12, 0x37

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {v4}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 323
    nop

    .line 325
    move-object v9, v3

    :cond_4
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-boolean v10, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    iget-wide v11, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    iget-wide v13, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    iget v15, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    move-object v4, v3

    move-object/from16 v5, p0

    move/from16 v8, p2

    invoke-direct/range {v4 .. v15}, Lcom/google/android/apps/nexuslauncher/smartspace/b;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a/d;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string v2, "SmartspaceCard"

    const-string v3, "from proto"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    return-object v1
.end method

.method private a(Lcom/google/android/apps/nexuslauncher/smartspace/a/h;)Z
    .locals 1

    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private eI()Lcom/google/android/apps/nexuslauncher/smartspace/a/g;
    .locals 8

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    .line 141
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v6, v6, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    add-long/2addr v4, v6

    .line 142
    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    return-object v0

    .line 144
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    return-object v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    return-object v0

    .line 149
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final A(Z)Lcom/google/android/apps/nexuslauncher/smartspace/a/h;
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eI()Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    return-object p1

    :cond_0
    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    return-object p1

    .line 158
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/google/android/apps/nexuslauncher/smartspace/a/i;)J
    .locals 4

    .line 189
    iget p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    .line 193
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 194
    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final ag(Landroid/view/View;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    if-nez v0, :cond_0

    .line 336
    const-string p1, "SmartspaceCard"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no tap action available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 339
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;->Gr:I

    packed-switch v2, :pswitch_data_0

    .line 352
    const-string p1, "SmartspaceCard"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unrecognized tap action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 348
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    return-void

    .line 343
    :pswitch_1
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final b(ZLjava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->A(Z)Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    move-result-object p1

    .line 253
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    iget v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    packed-switch v4, :pswitch_data_0

    const-string v4, ""

    aput-object v4, v1, v3

    goto/16 :goto_3

    :pswitch_0
    if-eqz p2, :cond_0

    aget-object v4, p1, v3

    iget v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    if-eqz v4, :cond_0

    aput-object p2, v1, v3

    goto/16 :goto_3

    :cond_0
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    if-eqz v4, :cond_1

    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    aput-object v4, v1, v3

    goto :goto_3

    :pswitch_1
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/i;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const v5, 0x7f120001

    const/16 v6, 0x3c

    const/4 v7, 0x1

    if-lt v4, v6, :cond_2

    div-int/lit8 v6, v4, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120002

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-lez v4, :cond_3

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v8, v5, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mContext:Landroid/content/Context;

    const v8, 0x7f0c00c2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v4, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6, v5, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_2
    aput-object v6, v1, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 258
    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    const-string p1, ""

    return-object p1

    .line 261
    :cond_7
    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final eJ()Z
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eI()Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 165
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-direct {p0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/h;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_2
    return v1
.end method

.method final eK()J
    .locals 6

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eI()Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 179
    iget v4, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a/i;)J

    move-result-wide v0

    return-wide v0

    .line 185
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final eL()Z
    .locals 4

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getExpiration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getExpiration()J
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fg:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;->xs:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " gsaVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Ff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gsaUpdateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->Fe:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0
.end method

.method public final z(Z)Landroid/text/TextUtils$TruncateAt;
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eI()Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    const/4 v1, 0x0

    .line 97
    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz v2, :cond_0

    .line 98
    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    iget v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    goto :goto_0

    .line 99
    :cond_0
    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    iget v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    .line 102
    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 104
    :pswitch_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 110
    :cond_2
    :goto_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
