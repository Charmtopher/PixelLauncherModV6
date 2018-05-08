.class public Landroid/support/v4/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jV:Landroid/view/ViewParent;

.field private jW:Landroid/view/ViewParent;

.field public jX:Z

.field private jY:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 0

    .line 393
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iput-object p2, p0, Landroid/support/v4/view/h;->jW:Landroid/view/ViewParent;

    goto :goto_0

    .line 395
    :pswitch_1
    iput-object p2, p0, Landroid/support/v4/view/h;->jV:Landroid/view/ViewParent;

    .line 396
    return-void

    .line 401
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v(I)Landroid/view/ViewParent;
    .locals 0

    .line 383
    packed-switch p1, :pswitch_data_0

    .line 389
    const/4 p1, 0x0

    return-object p1

    .line 387
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/view/h;->jW:Landroid/view/ViewParent;

    return-object p1

    .line 385
    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/view/h;->jV:Landroid/view/ViewParent;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dispatchNestedFling(FFZ)Z
    .locals 2

    .line 327
    iget-boolean v0, p0, Landroid/support/v4/view/h;->jX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v1}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/y;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    .line 334
    :cond_0
    return v1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 2

    .line 347
    iget-boolean v0, p0, Landroid/support/v4/view/h;->jX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, v1}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/y;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    .line 354
    :cond_0
    return v1
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .locals 7

    .line 278
    iget-boolean v0, p0, Landroid/support/v4/view/h;->jX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 279
    invoke-direct {p0, p5}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    return v1

    .line 284
    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    if-eqz p4, :cond_c

    .line 310
    aput v1, p4, v1

    .line 311
    aput v1, p4, v2

    goto/16 :goto_4

    .line 285
    :cond_2
    :goto_0
    nop

    .line 286
    nop

    .line 287
    if-eqz p4, :cond_3

    .line 288
    iget-object v3, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 289
    aget v3, p4, v1

    .line 290
    aget v4, p4, v2

    goto :goto_1

    .line 293
    :cond_3
    move v3, v1

    move v4, v3

    :goto_1
    if-nez p3, :cond_5

    .line 294
    iget-object p3, p0, Landroid/support/v4/view/h;->jY:[I

    if-nez p3, :cond_4

    .line 295
    const/4 p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/v4/view/h;->jY:[I

    .line 297
    :cond_4
    iget-object p3, p0, Landroid/support/v4/view/h;->jY:[I

    .line 299
    :cond_5
    aput v1, p3, v1

    .line 300
    aput v1, p3, v2

    .line 301
    iget-object v5, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    instance-of v6, v0, Landroid/support/v4/view/j;

    if-eqz v6, :cond_6

    check-cast v0, Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2, p3, p5}, Landroid/support/v4/view/j;->a(II[II)V

    goto :goto_2

    :cond_6
    if-nez p5, :cond_8

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt p5, v6, :cond_7

    :try_start_0
    invoke-interface {v0, v5, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ViewParentCompat"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v5, "ViewParent "

    invoke-direct {p5, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    instance-of p5, v0, Landroid/support/v4/view/i;

    if-eqz p5, :cond_8

    check-cast v0, Landroid/support/v4/view/i;

    invoke-interface {v0, v5, p1, p2, p3}, Landroid/support/v4/view/i;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 303
    :cond_8
    :goto_2
    if-eqz p4, :cond_9

    .line 304
    iget-object p1, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 305
    aget p1, p4, v1

    sub-int/2addr p1, v3

    aput p1, p4, v1

    .line 306
    aget p1, p4, v2

    sub-int/2addr p1, v4

    aput p1, p4, v2

    .line 308
    :cond_9
    aget p1, p3, v1

    if-nez p1, :cond_b

    aget p1, p3, v2

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    return v1

    :cond_b
    :goto_3
    return v2

    .line 314
    :cond_c
    :goto_4
    return v1
.end method

.method public final dispatchNestedScroll(IIII[II)Z
    .locals 14

    move-object v1, p0

    move/from16 v0, p4

    move-object/from16 v8, p5

    .line 220
    move/from16 v2, p6

    iget-boolean v3, v1, Landroid/support/v4/view/h;->jX:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_8

    .line 221
    invoke-direct {v1, v2}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 222
    if-nez v10, :cond_0

    .line 223
    return v9

    .line 226
    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    if-eqz v8, :cond_8

    .line 246
    aput v9, v8, v9

    .line 247
    aput v9, v8, v11

    goto/16 :goto_3

    .line 227
    :cond_2
    :goto_0
    nop

    .line 228
    nop

    .line 229
    if-eqz v8, :cond_3

    .line 230
    iget-object v3, v1, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 231
    aget v3, v8, v9

    .line 232
    aget v7, v8, v11

    .line 235
    move v12, v3

    move v13, v7

    goto :goto_1

    :cond_3
    move v12, v9

    move v13, v12

    :goto_1
    iget-object v3, v1, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    instance-of v7, v10, Landroid/support/v4/view/j;

    if-eqz v7, :cond_4

    check-cast v10, Landroid/support/v4/view/j;

    invoke-interface {v10, v0, v2}, Landroid/support/v4/view/j;->b(II)V

    goto :goto_2

    :cond_4
    if-nez v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v2, v7, :cond_5

    move-object v2, v10

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v0

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "ViewParentCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewParent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not implement interface method onNestedScroll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    instance-of v2, v10, Landroid/support/v4/view/i;

    if-eqz v2, :cond_6

    move-object v2, v10

    check-cast v2, Landroid/support/v4/view/i;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/support/v4/view/i;->onNestedScroll(Landroid/view/View;IIII)V

    .line 238
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 239
    iget-object v0, v1, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    aget v0, v8, v9

    sub-int/2addr v0, v12

    aput v0, v8, v9

    .line 241
    aget v0, v8, v11

    sub-int/2addr v0, v13

    aput v0, v8, v11

    .line 243
    :cond_7
    return v11

    .line 250
    :cond_8
    :goto_3
    return v9
.end method

.method public final hasNestedScrollingParent(I)Z
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroid/support/v4/view/h;->jX:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/n;->q(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/h;->jX:Z

    .line 74
    return-void
.end method

.method public final startNestedScroll(II)Z
    .locals 5

    .line 145
    invoke-virtual {p0, p2}, Landroid/support/v4/view/h;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    return v1

    .line 149
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/view/h;->jX:Z

    if-eqz v0, :cond_6

    .line 150
    iget-object v0, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    iget-object v2, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    .line 152
    :goto_0
    if-eqz v0, :cond_6

    .line 153
    iget-object v3, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/y;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    invoke-direct {p0, p2, v0}, Landroid/support/v4/view/h;->a(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    instance-of v4, v0, Landroid/support/v4/view/j;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/support/v4/view/j;

    invoke-interface {v0, v3, p1, p2}, Landroid/support/v4/view/j;->a(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p2, v4, :cond_2

    :try_start_0
    invoke-interface {v0, v2, v3, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ViewParentCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewParent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    instance-of p2, v0, Landroid/support/v4/view/i;

    if-eqz p2, :cond_3

    check-cast v0, Landroid/support/v4/view/i;

    invoke-interface {v0, v2, v3, p1}, Landroid/support/v4/view/i;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 156
    :cond_3
    :goto_1
    return v1

    .line 158
    :cond_4
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_5
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final stopNestedScroll(I)V
    .locals 5

    .line 186
    invoke-direct {p0, p1}, Landroid/support/v4/view/h;->v(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_3

    .line 188
    iget-object v1, p0, Landroid/support/v4/view/h;->mView:Landroid/view/View;

    instance-of v2, v0, Landroid/support/v4/view/j;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/v4/view/j;

    invoke-interface {v0, p1}, Landroid/support/v4/view/j;->e(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ViewParentCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewParent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/support/v4/view/i;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/support/v4/view/i;

    invoke-interface {v0, v1}, Landroid/support/v4/view/i;->onStopNestedScroll(Landroid/view/View;)V

    .line 189
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/h;->a(ILandroid/view/ViewParent;)V

    .line 191
    :cond_3
    return-void
.end method
