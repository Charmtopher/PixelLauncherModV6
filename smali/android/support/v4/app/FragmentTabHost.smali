.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private dv:I

.field private final fC:Ljava/util/ArrayList;

.field private fD:Landroid/support/v4/app/u;

.field private fE:Landroid/widget/TabHost$OnTabChangeListener;

.field private fF:Landroid/support/v4/app/P;

.field private fG:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method private a(Ljava/lang/String;Landroid/support/v4/app/Q;)Landroid/support/v4/app/Q;
    .locals 4

    .line 335
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->fC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->fC:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/P;

    iget-object v3, v2, Landroid/support/v4/app/P;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 336
    :goto_1
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    if-eq p1, v2, :cond_6

    .line 337
    if-nez p2, :cond_2

    .line 338
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fD:Landroid/support/v4/app/u;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->ag()Landroid/support/v4/app/Q;

    move-result-object p2

    .line 341
    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    if-eqz p1, :cond_3

    .line 342
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    iget-object p1, p1, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_3

    .line 343
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    iget-object p1, p1, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Q;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;

    .line 347
    :cond_3
    if-eqz v2, :cond_5

    .line 348
    iget-object p1, v2, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_4

    .line 349
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v0, v2, Landroid/support/v4/app/P;->fI:Ljava/lang/Class;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/P;->fJ:Landroid/os/Bundle;

    .line 349
    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, v2, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    .line 351
    iget p1, p0, Landroid/support/v4/app/FragmentTabHost;->dv:I

    iget-object v0, v2, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    iget-object v1, v2, Landroid/support/v4/app/P;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/app/Q;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Q;

    goto :goto_2

    .line 353
    :cond_4
    iget-object p1, v2, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Q;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;

    .line 357
    :cond_5
    :goto_2
    iput-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    .line 360
    :cond_6
    return-object p2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 257
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 263
    nop

    .line 264
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->fC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 265
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->fC:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/P;

    .line 266
    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->fD:Landroid/support/v4/app/u;

    iget-object v6, v4, Landroid/support/v4/app/P;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/u;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    .line 267
    iget-object v5, v4, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->dy:Z

    if-nez v5, :cond_2

    .line 268
    iget-object v5, v4, Landroid/support/v4/app/P;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iput-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->fF:Landroid/support/v4/app/P;

    goto :goto_1

    .line 276
    :cond_0
    if-nez v2, :cond_1

    .line 277
    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->fD:Landroid/support/v4/app/u;

    invoke-virtual {v2}, Landroid/support/v4/app/u;->ag()Landroid/support/v4/app/Q;

    move-result-object v2

    .line 279
    :cond_1
    iget-object v4, v4, Landroid/support/v4/app/P;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/Q;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;

    .line 264
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->fG:Z

    .line 287
    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/Q;)Landroid/support/v4/app/Q;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {v0}, Landroid/support/v4/app/Q;->commit()I

    .line 290
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->fD:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->executePendingTransactions()Z

    .line 292
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->fG:Z

    .line 298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 310
    instance-of v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    return-void

    .line 314
    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 315
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    iget-object p1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->fH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 302
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 303
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/app/FragmentTabHost$SavedState;->fH:Ljava/lang/String;

    .line 305
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->fG:Z

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/Q;)Landroid/support/v4/app/Q;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/support/v4/app/Q;->commit()I

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->fE:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->fE:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 330
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->fE:Landroid/widget/TabHost$OnTabChangeListener;

    .line 230
    return-void
.end method

.method public setup()V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
