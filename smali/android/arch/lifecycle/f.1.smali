.class Landroid/arch/lifecycle/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final H:Landroid/arch/lifecycle/e;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/e;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/arch/lifecycle/f;->H:Landroid/arch/lifecycle/e;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 29
    sget-object p1, Landroid/arch/lifecycle/g;->I:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 51
    return-void

    .line 49
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :pswitch_1
    return-void

    .line 43
    :pswitch_2
    return-void

    .line 40
    :pswitch_3
    return-void

    .line 37
    :pswitch_4
    return-void

    .line 34
    :pswitch_5
    return-void

    .line 31
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
