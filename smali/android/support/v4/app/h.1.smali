.class public Landroid/support/v4/app/h;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field cP:I

.field cQ:I

.field cR:Z

.field public cS:Z

.field cT:I

.field cU:Landroid/app/Dialog;

.field cV:Z

.field cW:Z

.field cX:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/h;->cP:I

    .line 91
    iput v0, p0, Landroid/support/v4/app/h;->cQ:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cR:Z

    .line 93
    iput-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->cT:I

    .line 102
    return-void
.end method


# virtual methods
.method public A()Landroid/app/Dialog;
    .locals 3

    .line 381
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/h;->C()Landroid/support/v4/app/n;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/h;->cQ:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public a(Landroid/support/v4/app/u;Ljava/lang/String;)V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cW:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cX:Z

    .line 142
    invoke-virtual {p1}, Landroid/support/v4/app/u;->ag()Landroid/support/v4/app/Q;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/Q;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Q;

    .line 144
    invoke-virtual {p1}, Landroid/support/v4/app/Q;->commit()I

    .line 145
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 401
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 403
    iget-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 408
    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 413
    iget-object v1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->C()Landroid/support/v4/app/n;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_3

    .line 417
    iget-object v1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 419
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/h;->cR:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 420
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 421
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 422
    if-eqz p1, :cond_4

    .line 423
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 424
    if-eqz p1, :cond_4

    .line 425
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 428
    :cond_4
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 289
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 290
    iget-boolean p1, p0, Landroid/support/v4/app/h;->cX:Z

    if-nez p1, :cond_0

    .line 293
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/app/h;->cW:Z

    .line 295
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 386
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 310
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    iget v0, p0, Landroid/support/v4/app/h;->dv:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    .line 314
    if-eqz p1, :cond_1

    .line 315
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->cP:I

    .line 316
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->cQ:I

    .line 317
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cR:Z

    .line 318
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->cS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    .line 319
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/h;->cT:I

    .line 321
    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 479
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 480
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cV:Z

    .line 485
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    .line 488
    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 299
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 300
    iget-boolean v0, p0, Landroid/support/v4/app/h;->cX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->cW:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cW:Z

    .line 306
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 390
    iget-boolean p1, p0, Landroid/support/v4/app/h;->cV:Z

    if-nez p1, :cond_2

    .line 395
    iget-boolean p1, p0, Landroid/support/v4/app/h;->cW:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->cW:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cX:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/h;->cV:Z

    iget v0, p0, Landroid/support/v4/app/h;->cT:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    iget v1, p0, Landroid/support/v4/app/h;->cT:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/u;->popBackStack(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/app/h;->cT:I

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->ag()Landroid/support/v4/app/Q;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/Q;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;

    invoke-virtual {p1}, Landroid/support/v4/app/Q;->commitAllowingStateLoss()I

    return-void

    .line 397
    :cond_2
    return-void
.end method

.method public final onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 326
    iget-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    if-nez v0, :cond_0

    .line 327
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->A()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    .line 332
    iget-object p1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 333
    iget-object p1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    iget v0, p0, Landroid/support/v4/app/h;->cP:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 335
    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 338
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/h;->dq:Landroid/support/v4/app/t;

    iget-object p1, p1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 442
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    .line 446
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 449
    :cond_0
    iget v0, p0, Landroid/support/v4/app/h;->cP:I

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/h;->cP:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    :cond_1
    iget v0, p0, Landroid/support/v4/app/h;->cQ:I

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/h;->cQ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/h;->cR:Z

    if-nez v0, :cond_3

    .line 456
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->cR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/h;->cS:Z

    if-nez v0, :cond_4

    .line 459
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->cS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    :cond_4
    iget v0, p0, Landroid/support/v4/app/h;->cT:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 462
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/h;->cT:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    :cond_5
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 432
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 434
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->cV:Z

    .line 436
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 438
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 468
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/h;->cU:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 472
    :cond_0
    return-void
.end method
