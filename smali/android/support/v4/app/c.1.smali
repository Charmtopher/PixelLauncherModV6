.class final Landroid/support/v4/app/c;
.super Landroid/support/v4/app/Q;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/I;


# instance fields
.field cA:I

.field cB:Ljava/lang/CharSequence;

.field cC:Ljava/util/ArrayList;

.field cD:Ljava/util/ArrayList;

.field cE:Z

.field cF:Ljava/util/ArrayList;

.field final cm:Landroid/support/v4/app/v;

.field cn:Ljava/util/ArrayList;

.field co:I

.field cp:I

.field cq:I

.field cr:I

.field cs:I

.field ct:I

.field cu:Z

.field cv:Z

.field cw:Z

.field cx:I

.field cy:I

.field cz:Ljava/lang/CharSequence;

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/v;)V
    .locals 1

    .line 332
    invoke-direct {p0}, Landroid/support/v4/app/Q;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->cv:Z

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->cx:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c;->cE:Z

    .line 333
    iput-object p1, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    .line 334
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 398
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 399
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 407
    if-eqz p3, :cond_3

    .line 408
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t change tag of fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": was "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " now "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_2
    :goto_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    .line 416
    :cond_3
    if-eqz p1, :cond_7

    .line 417
    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 421
    iget p3, p2, Landroid/support/v4/app/Fragment;->du:I

    if-eqz p3, :cond_5

    iget p3, p2, Landroid/support/v4/app/Fragment;->du:I

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 422
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t change container ID of fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": was "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/support/v4/app/Fragment;->du:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " now "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 426
    :cond_5
    :goto_1
    iput p1, p2, Landroid/support/v4/app/Fragment;->du:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->dv:I

    goto :goto_2

    .line 418
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t add fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_7
    :goto_2
    new-instance p1, Landroid/support/v4/app/d;

    invoke-direct {p1, p4, p2}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 430
    return-void

    .line 400
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static b(Landroid/support/v4/app/d;)Z
    .locals 1

    .line 1009
    iget-object p0, p0, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 1010
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Y()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 13

    .line 888
    const/4 v0, 0x0

    move-object v1, p2

    move p2, v0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 889
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 890
    iget v3, v2, Landroid/support/v4/app/d;->cG:I

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 945
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v4/app/d;

    invoke-direct {v4, v5, v1}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 946
    add-int/lit8 p2, p2, 0x1

    .line 948
    iget-object v1, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    goto/16 :goto_4

    .line 897
    :pswitch_2
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 898
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-ne v3, v1, :cond_5

    .line 899
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/d;

    iget-object v2, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-direct {v3, v5, v2}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 900
    add-int/lit8 p2, p2, 0x1

    .line 901
    nop

    .line 888
    move-object v1, v4

    goto/16 :goto_4

    .line 906
    :pswitch_3
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 907
    iget v7, v3, Landroid/support/v4/app/Fragment;->dv:I

    .line 908
    nop

    .line 909
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move-object v9, v1

    move v1, p2

    move p2, v0

    :goto_1
    if-ltz v8, :cond_3

    .line 910
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 911
    iget v11, v10, Landroid/support/v4/app/Fragment;->dv:I

    if-ne v11, v7, :cond_2

    .line 912
    if-ne v10, v3, :cond_0

    .line 913
    nop

    .line 909
    move p2, v6

    goto :goto_2

    .line 917
    :cond_0
    if-ne v10, v9, :cond_1

    .line 918
    iget-object v9, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    new-instance v11, Landroid/support/v4/app/d;

    invoke-direct {v11, v5, v10}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 919
    add-int/lit8 v1, v1, 0x1

    .line 920
    nop

    .line 922
    move-object v9, v4

    :cond_1
    new-instance v11, Landroid/support/v4/app/d;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v10}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 923
    iget v12, v2, Landroid/support/v4/app/d;->cI:I

    iput v12, v11, Landroid/support/v4/app/d;->cI:I

    .line 924
    iget v12, v2, Landroid/support/v4/app/d;->cK:I

    iput v12, v11, Landroid/support/v4/app/d;->cK:I

    .line 925
    iget v12, v2, Landroid/support/v4/app/d;->cJ:I

    iput v12, v11, Landroid/support/v4/app/d;->cJ:I

    .line 926
    iget v12, v2, Landroid/support/v4/app/d;->cL:I

    iput v12, v11, Landroid/support/v4/app/d;->cL:I

    .line 927
    iget-object v12, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 928
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 929
    add-int/2addr v1, v6

    .line 909
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 933
    :cond_3
    if-eqz p2, :cond_4

    .line 934
    iget-object p2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 935
    add-int/lit8 p2, v1, -0x1

    .line 888
    :goto_3
    move-object v1, v9

    goto :goto_4

    .line 937
    :cond_4
    iput v6, v2, Landroid/support/v4/app/d;->cG:I

    .line 938
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    nop

    .line 888
    move p2, v1

    goto :goto_3

    .line 893
    :pswitch_4
    iget-object v2, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    nop

    .line 888
    :cond_5
    :goto_4
    add-int/2addr p2, v6

    goto/16 :goto_0

    .line 953
    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Q;
    .locals 1

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 392
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;
    .locals 2

    .line 450
    new-instance v0, Landroid/support/v4/app/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 452
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Q;
    .locals 2

    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 380
    return-object p0
.end method

.method final a(Landroid/support/v4/app/d;)V
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget v0, p0, Landroid/support/v4/app/c;->co:I

    iput v0, p1, Landroid/support/v4/app/d;->cI:I

    .line 372
    iget v0, p0, Landroid/support/v4/app/c;->cp:I

    iput v0, p1, Landroid/support/v4/app/d;->cJ:I

    .line 373
    iget v0, p0, Landroid/support/v4/app/c;->cq:I

    iput v0, p1, Landroid/support/v4/app/d;->cK:I

    .line 374
    iget v0, p0, Landroid/support/v4/app/c;->cr:I

    iput v0, p1, Landroid/support/v4/app/d;->cL:I

    .line 375
    return-void
.end method

.method final a(Landroid/support/v4/app/l;)V
    .locals 3

    .line 1000
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    .line 1002
    invoke-static {v1}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v1, v1, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/support/v4/app/l;)V

    .line 1000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    .line 255
    if-eqz p3, :cond_8

    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->cx:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c;->cw:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    iget v0, p0, Landroid/support/v4/app/c;->cs:I

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Landroid/support/v4/app/c;->cs:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Landroid/support/v4/app/c;->ct:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    iget v0, p0, Landroid/support/v4/app/c;->co:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/c;->cp:I

    if-eqz v0, :cond_2

    .line 266
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/support/v4/app/c;->co:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Landroid/support/v4/app/c;->cp:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_2
    iget v0, p0, Landroid/support/v4/app/c;->cq:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/c;->cr:I

    if-eqz v0, :cond_4

    .line 272
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/support/v4/app/c;->cq:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Landroid/support/v4/app/c;->cr:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_4
    iget v0, p0, Landroid/support/v4/app/c;->cy:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/c;->cz:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 278
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Landroid/support/v4/app/c;->cy:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/support/v4/app/c;->cz:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    :cond_6
    iget v0, p0, Landroid/support/v4/app/c;->cA:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/c;->cB:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 284
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/support/v4/app/c;->cA:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/c;->cB:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 291
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 296
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 298
    iget v3, v2, Landroid/support/v4/app/d;->cG:I

    packed-switch v3, :pswitch_data_0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/support/v4/app/d;->cG:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 308
    :pswitch_0
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    .line 307
    :pswitch_1
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    .line 306
    :pswitch_2
    const-string v3, "ATTACH"

    goto :goto_1

    .line 305
    :pswitch_3
    const-string v3, "DETACH"

    goto :goto_1

    .line 304
    :pswitch_4
    const-string v3, "SHOW"

    goto :goto_1

    .line 303
    :pswitch_5
    const-string v3, "HIDE"

    goto :goto_1

    .line 302
    :pswitch_6
    const-string v3, "REMOVE"

    goto :goto_1

    .line 301
    :pswitch_7
    const-string v3, "REPLACE"

    goto :goto_1

    .line 300
    :pswitch_8
    const-string v3, "ADD"

    goto :goto_1

    .line 299
    :pswitch_9
    const-string v3, "NULL"

    .line 311
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    if-eqz p3, :cond_c

    .line 315
    iget v3, v2, Landroid/support/v4/app/d;->cI:I

    if-nez v3, :cond_9

    iget v3, v2, Landroid/support/v4/app/d;->cJ:I

    if-eqz v3, :cond_a

    .line 316
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget v3, v2, Landroid/support/v4/app/d;->cI:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget v3, v2, Landroid/support/v4/app/d;->cJ:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_a
    iget v3, v2, Landroid/support/v4/app/d;->cK:I

    if-nez v3, :cond_b

    iget v3, v2, Landroid/support/v4/app/d;->cL:I

    if-eqz v3, :cond_c

    .line 322
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v3, v2, Landroid/support/v4/app/d;->cK:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget v2, v2, Landroid/support/v4/app/d;->cL:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 330
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;II)Z
    .locals 10

    .line 723
    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    .line 724
    return v0

    .line 726
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    const/4 v2, -0x1

    .line 728
    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 729
    iget-object v4, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d;

    .line 730
    iget-object v5, v4, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->dv:I

    goto :goto_1

    .line 731
    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    .line 732
    nop

    .line 733
    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    .line 734
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/c;

    .line 735
    iget-object v6, v5, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 736
    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 737
    iget-object v8, v5, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/d;

    .line 738
    iget-object v9, v8, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_2

    iget-object v8, v8, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->dv:I

    goto :goto_4

    .line 740
    :cond_2
    move v8, v0

    :goto_4
    if-ne v8, v4, :cond_3

    .line 741
    const/4 p1, 0x1

    return p1

    .line 736
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 733
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 728
    :cond_5
    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_7
    return v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    .line 698
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-boolean p1, p0, Landroid/support/v4/app/c;->cu:Z

    if-eqz p1, :cond_2

    .line 705
    iget-object p1, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object p2, p1, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, p1, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method final b(Z)I
    .locals 3

    .line 669
    iget-boolean v0, p0, Landroid/support/v4/app/c;->cw:Z

    if-nez v0, :cond_2

    .line 670
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v0, Landroid/support/v4/c/g;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/g;-><init>(Ljava/lang/String;)V

    .line 673
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 674
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 675
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 677
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->cw:Z

    .line 678
    iget-boolean v0, p0, Landroid/support/v4/app/c;->cu:Z

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/c;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->cx:I

    goto :goto_0

    .line 681
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->cx:I

    .line 683
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/I;Z)V

    .line 684
    iget p1, p0, Landroid/support/v4/app/c;->cx:I

    return p1

    .line 669
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 967
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 968
    iget-object v1, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    .line 969
    iget v2, v1, Landroid/support/v4/app/d;->cG:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 979
    :pswitch_0
    iget-object p2, v1, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 980
    goto :goto_1

    .line 982
    :pswitch_1
    const/4 p2, 0x0

    goto :goto_1

    .line 976
    :cond_0
    :pswitch_2
    iget-object v1, v1, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    goto :goto_1

    .line 972
    :cond_1
    :pswitch_3
    iget-object v1, v1, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    nop

    .line 967
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;
    .locals 2

    .line 471
    new-instance v0, Landroid/support/v4/app/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 473
    return-object p0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Q;
    .locals 2

    .line 478
    new-instance v0, Landroid/support/v4/app/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/d;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 480
    return-object p0
.end method

.method final c(Z)V
    .locals 6

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 815
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 816
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 817
    if-eqz v3, :cond_0

    .line 818
    iget v4, p0, Landroid/support/v4/app/c;->cs:I

    invoke-static {v4}, Landroid/support/v4/app/v;->n(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/c;->ct:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->c(II)V

    .line 821
    :cond_0
    iget v4, v2, Landroid/support/v4/app/d;->cG:I

    if-eq v4, v1, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 853
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cmd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Landroid/support/v4/app/d;->cG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 850
    :pswitch_0
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->n(Landroid/support/v4/app/Fragment;)V

    .line 851
    goto :goto_1

    .line 847
    :pswitch_1
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/v;->n(Landroid/support/v4/app/Fragment;)V

    .line 848
    goto :goto_1

    .line 843
    :pswitch_2
    iget v4, v2, Landroid/support/v4/app/d;->cL:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 844
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->k(Landroid/support/v4/app/Fragment;)V

    .line 845
    goto :goto_1

    .line 839
    :pswitch_3
    iget v4, v2, Landroid/support/v4/app/d;->cK:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 840
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->l(Landroid/support/v4/app/Fragment;)V

    .line 841
    goto :goto_1

    .line 835
    :pswitch_4
    iget v4, v2, Landroid/support/v4/app/d;->cL:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 836
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->i(Landroid/support/v4/app/Fragment;)V

    .line 837
    goto :goto_1

    .line 831
    :pswitch_5
    iget v4, v2, Landroid/support/v4/app/d;->cK:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 832
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->j(Landroid/support/v4/app/Fragment;)V

    .line 833
    goto :goto_1

    .line 827
    :pswitch_6
    iget v4, v2, Landroid/support/v4/app/d;->cK:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 828
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 829
    goto :goto_1

    .line 823
    :cond_1
    iget v4, v2, Landroid/support/v4/app/d;->cL:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 824
    iget-object v4, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/v;->h(Landroid/support/v4/app/Fragment;)V

    .line 825
    nop

    .line 855
    :goto_1
    iget-boolean v4, p0, Landroid/support/v4/app/c;->cE:Z

    if-nez v4, :cond_2

    iget v2, v2, Landroid/support/v4/app/d;->cG:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 856
    iget-object v2, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/v;->f(Landroid/support/v4/app/Fragment;)V

    .line 814
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 859
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/c;->cE:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 860
    iget-object p1, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget v0, v0, Landroid/support/v4/app/v;->eG:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/v;->b(IZ)V

    .line 862
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final commit()I
    .locals 1

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->b(Z)I

    move-result v0

    return v0
.end method

.method public final commitAllowingStateLoss()I
    .locals 1

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->b(Z)I

    move-result v0

    return v0
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 252
    return-void
.end method

.method final g(I)V
    .locals 6

    .line 597
    iget-boolean v0, p0, Landroid/support/v4/app/c;->cu:Z

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 603
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 604
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 605
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    .line 606
    iget-object v3, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->do:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->do:I

    .line 607
    sget-boolean v3, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->do:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_3
    return-void
.end method

.method final h(I)Z
    .locals 5

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 713
    iget-object v3, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    .line 714
    iget-object v4, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->dv:I

    goto :goto_1

    .line 715
    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    .line 716
    const/4 p1, 0x1

    return p1

    .line 712
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Landroid/support/v4/app/c;->cx:I

    if-ltz v1, :cond_0

    .line 239
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Landroid/support/v4/app/c;->cx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 3

    .line 627
    iget-object v0, p0, Landroid/support/v4/app/c;->cF:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 628
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/c;->cF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 629
    iget-object v2, p0, Landroid/support/v4/app/c;->cF:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c;->cF:Ljava/util/ArrayList;

    .line 633
    :cond_1
    return-void
.end method

.method final z()V
    .locals 8

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 756
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 757
    iget-object v4, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/d;

    .line 758
    iget-object v5, v4, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 759
    if-eqz v5, :cond_0

    .line 760
    iget v6, p0, Landroid/support/v4/app/c;->cs:I

    iget v7, p0, Landroid/support/v4/app/c;->ct:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->c(II)V

    .line 762
    :cond_0
    iget v6, v4, Landroid/support/v4/app/d;->cG:I

    if-eq v6, v3, :cond_1

    packed-switch v6, :pswitch_data_0

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/support/v4/app/d;->cG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :pswitch_0
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/v;->n(Landroid/support/v4/app/Fragment;)V

    .line 792
    goto :goto_1

    .line 788
    :pswitch_1
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->n(Landroid/support/v4/app/Fragment;)V

    .line 789
    goto :goto_1

    .line 784
    :pswitch_2
    iget v6, v4, Landroid/support/v4/app/d;->cI:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 785
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->l(Landroid/support/v4/app/Fragment;)V

    .line 786
    goto :goto_1

    .line 780
    :pswitch_3
    iget v6, v4, Landroid/support/v4/app/d;->cJ:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 781
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->k(Landroid/support/v4/app/Fragment;)V

    .line 782
    goto :goto_1

    .line 776
    :pswitch_4
    iget v6, v4, Landroid/support/v4/app/d;->cI:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 777
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->j(Landroid/support/v4/app/Fragment;)V

    .line 778
    goto :goto_1

    .line 772
    :pswitch_5
    iget v6, v4, Landroid/support/v4/app/d;->cJ:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 773
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->i(Landroid/support/v4/app/Fragment;)V

    .line 774
    goto :goto_1

    .line 768
    :pswitch_6
    iget v6, v4, Landroid/support/v4/app/d;->cJ:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 769
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/v;->h(Landroid/support/v4/app/Fragment;)V

    .line 770
    goto :goto_1

    .line 764
    :cond_1
    iget v6, v4, Landroid/support/v4/app/d;->cI:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->i(I)V

    .line 765
    iget-object v6, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v6, v5, v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 766
    nop

    .line 796
    :goto_1
    iget-boolean v6, p0, Landroid/support/v4/app/c;->cE:Z

    if-nez v6, :cond_2

    iget v4, v4, Landroid/support/v4/app/d;->cG:I

    if-eq v4, v3, :cond_2

    if-eqz v5, :cond_2

    .line 797
    iget-object v3, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/v;->f(Landroid/support/v4/app/Fragment;)V

    .line 756
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 800
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/c;->cE:Z

    if-nez v0, :cond_4

    .line 802
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget v1, v1, Landroid/support/v4/app/v;->eG:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/v;->b(IZ)V

    .line 804
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
