.class public final Landroid/support/v4/app/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final gE:Landroid/os/Bundle;

.field final hH:Ljava/lang/String;

.field final hI:Ljava/lang/CharSequence;

.field final hJ:[Ljava/lang/CharSequence;

.field final hK:Z

.field final hL:Ljava/util/Set;


# direct methods
.method static b([Landroid/support/v4/app/aw;)[Landroid/app/RemoteInput;
    .locals 5

    .line 414
    if-nez p0, :cond_0

    .line 415
    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    .line 418
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 419
    aget-object v2, p0, v1

    new-instance v3, Landroid/app/RemoteInput$Builder;

    iget-object v4, v2, Landroid/support/v4/app/aw;->hH:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/support/v4/app/aw;->hI:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/support/v4/app/aw;->hJ:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    iget-boolean v4, v2, Landroid/support/v4/app/aw;->hK:Z

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    iget-object v2, v2, Landroid/support/v4/app/aw;->gE:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    return-object v0
.end method
