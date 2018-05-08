.class public final synthetic Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;

    invoke-direct {v0}, Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;->INSTANCE:Lcom/android/launcher3/views/-$$Lambda$pbN4MYZT_sQHhmIWZtgqyaKyewM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
