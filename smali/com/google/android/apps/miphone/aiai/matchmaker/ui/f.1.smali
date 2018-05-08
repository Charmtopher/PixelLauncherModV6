.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/s;


# instance fields
.field private final context:Landroid/content/Context;

.field final uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

.field final uH:Landroid/graphics/RectF;

.field uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

.field public uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

.field un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    .line 325
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->context:Landroid/content/Context;

    .line 326
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    .line 327
    return-void
.end method

.method private a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;Landroid/view/MenuItem;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V
    .locals 2

    .line 313
    if-eqz p3, :cond_3

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    if-nez v1, :cond_1

    const-string p3, "Unable to find icon for "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    invoke-static {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    iget-object p3, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rU:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 317
    :goto_1
    if-eqz p3, :cond_3

    .line 318
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 319
    const-string p2, "Setting icon for "

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 322
    :cond_3
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;Z)Landroid/content/Intent;
    .locals 8

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_0
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 235
    :cond_3
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 236
    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_4
    iget v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    if-eqz v1, :cond_5

    .line 239
    iget v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    :cond_5
    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 242
    iget v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    packed-switch v5, :pswitch_data_0

    .line 267
    iget p1, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    const/16 p2, 0x3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Menu action error: unknown menu intent param type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V

    .line 268
    const/4 p1, 0x0

    return-object p1

    .line 264
    :pswitch_0
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    goto :goto_2

    .line 256
    :pswitch_1
    if-eqz p2, :cond_6

    .line 257
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 258
    invoke-virtual {p0, v4, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;Z)Landroid/content/Intent;

    move-result-object v4

    .line 257
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 260
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ONE level of nested intent is allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :pswitch_2
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget-wide v6, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    goto :goto_2

    .line 250
    :pswitch_3
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 251
    goto :goto_2

    .line 247
    :pswitch_4
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    goto :goto_2

    .line 244
    :pswitch_5
    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    nop

    .line 241
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    :cond_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/view/ActionMode;Landroid/view/Menu;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V
    .locals 9

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 146
    if-nez v0, :cond_1

    .line 147
    return-void

    .line 150
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 153
    const/4 v1, 0x0

    .line 156
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 157
    aget-object v4, v0, v1

    .line 158
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    if-eqz v5, :cond_4

    .line 159
    iget-boolean v5, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ti:Z

    const v6, 0x1020041

    if-eqz v5, :cond_3

    .line 163
    if-nez v3, :cond_2

    .line 166
    array-length v3, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v6

    array-length v5, v0

    add-int/2addr v5, v1

    const-string v7, ""

    .line 167
    invoke-interface {p2, v6, v3, v5, v7}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    .line 172
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 173
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 175
    :cond_2
    add-int v5, v1, v6

    array-length v7, v0

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    iget-object v8, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    .line 176
    invoke-interface {v3, v6, v5, v7, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 181
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    new-instance v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 196
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;Landroid/view/MenuItem;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 197
    goto :goto_1

    .line 198
    :cond_3
    add-int v5, v1, v6

    iget-object v7, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    .line 199
    invoke-interface {p2, v6, v5, v1, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 204
    iget-object v6, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 205
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;Landroid/view/MenuItem;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 207
    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    iget-object v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-interface {v5, v4, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    .line 156
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    if-eqz p2, :cond_6

    .line 212
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    invoke-interface {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;->a(Landroid/view/ActionMode;)V

    .line 214
    :cond_6
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Landroid/view/ActionMode;Landroid/view/Menu;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V

    .line 41
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tv:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 49
    if-nez v0, :cond_1

    .line 50
    return v1

    .line 52
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v2, 0x1020041

    sub-int/2addr p1, v2

    .line 53
    if-ltz p1, :cond_10

    array-length v2, v0

    if-lt p1, v2, :cond_2

    goto/16 :goto_7

    .line 57
    :cond_2
    aget-object p1, v0, p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    return v1

    .line 61
    :cond_3
    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    .line 62
    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 64
    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->ta:Ljava/lang/String;

    .line 70
    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v3, :cond_8

    .line 72
    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->te:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 73
    invoke-virtual {p0, v3, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;Z)Landroid/content/Intent;

    move-result-object v3

    .line 74
    if-nez v3, :cond_4

    .line 75
    return v2

    .line 78
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v4, :cond_5

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-interface {v4, v0, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    .line 81
    :cond_5
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto/16 :goto_6

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v2, "Error launching intent for "

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return v1

    .line 91
    :cond_8
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;->sc:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    if-nez v5, :cond_a

    const-string v3, "Unable to find pending intent for "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    const-string v5, "TEST"

    iget-object v6, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rV:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/16 v7, 0x17

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Accessing "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rV:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 94
    :goto_2
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v4, :cond_b

    .line 95
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-interface {v4, v0, v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    .line 98
    :cond_b
    if-eqz v3, :cond_e

    .line 99
    :try_start_1
    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const-string v2, "Pending Intent canceled for "

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return v1

    .line 101
    :catch_2
    move-exception v0

    .line 102
    const-string v2, "Error launching intent for "

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->ta:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return v1

    .line 107
    :cond_e
    :goto_5
    nop

    .line 110
    :cond_f
    :goto_6
    return v2

    .line 54
    :cond_10
    :goto_7
    const/16 v0, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid menu item clicked; item id = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V

    .line 55
    return v1

    .line 46
    :cond_11
    :goto_8
    return v1
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    return-void

    .line 116
    :cond_1
    :goto_0
    return-void
.end method
